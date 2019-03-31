import 'package:flutter/material.dart';

class App extends StatelessWidget {
    final barColor = const Color(0xFF86e2d5);
  final bgColor = const Color(0xFFe8e8e8);

  Widget build(BuildContext){
    return MaterialApp(
    home: Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: barColor,
        onPressed: () {
          
        },
        child: Icon(Icons.add , color: bgColor,),
      ),
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text("Myinstragram"),
        backgroundColor: barColor,
      ),
    ),
  );
  }
}