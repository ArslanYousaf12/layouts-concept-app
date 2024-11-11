import 'dart:developer';

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
      int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('counter'),),
        body: Center(child: Text(counter.toString(),style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),)),
        floatingActionButton: FloatingActionButton(onPressed: (){
          setState(() {
            counter++;
            log(counter.toString());
          });
        }, child: Text('+'),),
    );
  }
}