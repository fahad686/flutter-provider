import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learning_series/number_adding_provider.dart';

class HomeSecondScreen extends StatefulWidget {
  const HomeSecondScreen({super.key});

  @override
  State<HomeSecondScreen> createState() => _HomeSecondScreenState();
}

class _HomeSecondScreenState extends State<HomeSecondScreen> {
  int buildCallingCounter = 0;
  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print("Build call again: ${buildCallingCounter}");
    }
    return Consumer<NumberAddingProvider>(
      builder: (context, numberAddingProvider, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            numberAddingProvider.add();
          },
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          title: const Text(" Home Second Screen"),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Text(
              numberAddingProvider.numbers.last.toString(),
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: numberAddingProvider.numbers.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(12),
                      child:
                          Text(numberAddingProvider.numbers[index].toString()),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
