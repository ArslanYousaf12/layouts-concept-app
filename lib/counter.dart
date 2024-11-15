import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterScreen(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  String evenOdd = 'Even'; // Initial display message

  void incrementCounter() {
    setState(() {
      counter++;
      evenOdd = (counter % 2 == 0) ? 'Even' : 'odd' ;
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
              'Counter: $counter',
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
