import 'package:flutter/material.dart';

class  flexwidget extends StatelessWidget{
  const flexwidget({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('concept of Flex',style: TextStyle(color: Colors.brown,fontSize: 30,fontWeight: FontWeight.w600),),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 100,
            child: Container(
              color: Colors.black87,
              width: double.infinity,
              
            ), 
        
          ),
          Flexible(
            flex:50,
            child: Container(
              color: Colors.blueGrey,
              height: 200,
              width: double.infinity,
            ),
            ),
            Flexible(
              flex: 30,
              child: Container(
                color: Colors.black87,
                  height: 200,
                  width: double.infinity,
               ),
              ),
        ],
      ),
    );
  }
}