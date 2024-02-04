import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeSecondScreen extends StatefulWidget {
 final List<int> numbers;
  const HomeSecondScreen({super.key,required this.numbers});

  @override
  State<HomeSecondScreen> createState() => _HomeSecondScreenState();
}

class _HomeSecondScreenState extends State<HomeSecondScreen> {

  int buildCallingCounter=0;
  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print("Build call again: ${buildCallingCounter}");
    }
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
      ),
    );
  }
}







