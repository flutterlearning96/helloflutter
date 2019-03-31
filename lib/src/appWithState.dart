import 'package:flutter/material.dart';

class AppWithState extends StatefulWidget {
  createState () {
    return AppStateKeeper();
  }
}

class AppStateKeeper extends State<AppWithState> {
  int myvalue = 1;
    final barColor = const Color(0xFFcf000f);
  final bgColor = const Color(0xFFe8e8e8);

  Widget build(BuildContext){
    return MaterialApp(
    home: Scaffold(
      body: Center(
          child: Text(
                      'you press add button ${myvalue} time',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontWeight: FontWeight.bold , height: 5.00 , color: barColor , fontSize: 20 , fontStyle: FontStyle.italic),
          ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: barColor,
        onPressed: () {
          setState(() {
            myvalue = myvalue + 1;
          });
        },
        child: Icon(Icons.add , color: bgColor,),
      ),
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text('My First app with flutter'),
        backgroundColor: barColor,
      ),
    ),
  );
  }
}