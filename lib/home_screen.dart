import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learning_series/number_adding_provider.dart';

import 'home_second_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberAddingProvider>(
      builder: (context, value, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            value.add();
          },
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          backgroundColor: Colors.grey[400],
          centerTitle: true,
          title: Text("hy"),
        ),
        body: Column(
          children: [
            Text(
              value.numbers.last.toString(),
              style: TextStyle(fontSize: 18),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: value.numbers.length,
                  itemBuilder: (context, index) {
                    return Text(value.numbers[index].toString());
                  }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomeSecondScreen()));
                  },
                  child: Center(
                    child: Text("press for second Screen"),
                  )),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
