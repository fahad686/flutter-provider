import 'package:flutter/material.dart';

import 'home_second_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<int> numbers=[1,2,3,4];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        int last=numbers.last;
        setState(() {
          numbers.add(last+1);
        });
      },
      child: Icon(Icons.add),),
      appBar: AppBar(backgroundColor: Colors.grey[400],
        centerTitle: true ,
        title: Text("hy"),
      ),
      body: Column(
        children: [
          Text(numbers.last.toString(),style: TextStyle(fontSize: 18),),
          Expanded(
            child: ListView.builder(

                itemCount: numbers.length,
                itemBuilder: (context,index){
                  return Text(numbers[index].toString());
            
            }),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 90),
            child: ElevatedButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>HomeSecondScreen(numbers: numbers,)));
            }, child: Center(child: Text("press for second Screen"),)),
          ),
          SizedBox(height: 50,)



        ],
      ),
    );
  }
}
