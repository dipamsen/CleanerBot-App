import 'package:flutter/material.dart';
import 'package:bluetoothadapter/bluetoothadapter.dart';


void main() => runApp(MaterialApp(
    home: CleanerBot()
));

class CleanerBot extends StatefulWidget {
  @override
  _CleanerBotState createState() => _CleanerBotState();
}

class _CleanerBotState extends State<CleanerBot> {

  Bluetoothadapter flutterbluetoothadapter = Bluetoothadapter();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'CleanerBot',
          style: TextStyle(
            fontFamily: 'AlgreyaSans',
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          RaisedButton(
            child: Text("Click Me"),
            onPressed: (){
              flutterbluetoothadapter.getDevices().then((value) {
                value.forEach((element) {
                  print(element);
                });
              });
            },
          )
        ],
      ),
    );
  }
}