import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:provider/provider.dart';
import 'package:provider_learning_series/number_adding_provider.dart';

class HomeSecondScreen extends StatefulWidget {
  const HomeSecondScreen({super.key});
=======

class HomeSecondScreen extends StatefulWidget {
 final List<int> numbers;
  const HomeSecondScreen({super.key,required this.numbers});
>>>>>>> 710488c6c235efe837c9b1449773d0b13c83ae1b

  @override
  State<HomeSecondScreen> createState() => _HomeSecondScreenState();
}

class _HomeSecondScreenState extends State<HomeSecondScreen> {
<<<<<<< HEAD
  int buildCallingCounter = 0;
=======

  int buildCallingCounter=0;
>>>>>>> 710488c6c235efe837c9b1449773d0b13c83ae1b
  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print("Build call again: ${buildCallingCounter}");
    }
<<<<<<< HEAD
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
=======
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
           buildCallingCounter= buildCallingCounter+1;
            int lastNumber = widget.numbers.last;

            widget.numbers.add(lastNumber + 1);
          });
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text(" Home Second Screen"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[ Text(
          widget.numbers.last.toString(),
          style: TextStyle(fontSize: 18),
        ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.numbers.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(widget.numbers[index].toString()),
                  );
                }),
          ),
        ],
>>>>>>> 710488c6c235efe837c9b1449773d0b13c83ae1b
      ),
    );
  }
}
<<<<<<< HEAD
=======







>>>>>>> 710488c6c235efe837c9b1449773d0b13c83ae1b
