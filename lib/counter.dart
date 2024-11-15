import 'package:flutter/material.dart';


class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 1;
  int result= 2;
  String evenOdd = 'Even'; // Initial display message

  void incrementCounter() {
    setState(() {
      counter++;
     result = 2 * counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                '2 * $counter = $result',
            style: TextStyle(fontSize: 25),),
            SizedBox(height: 10,),
            Text(' The number is $evenOdd',
            style: TextStyle(fontSize: 25),),
            

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter,
        child: Icon(Icons.add),
      ),
    );
  }
}
