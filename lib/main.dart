import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

void main() => runApp(MaterialApp(home: CleanerBot()));

class CleanerBot extends StatefulWidget {
  @override
  _CleanerBotState createState() => _CleanerBotState();
}

class _CleanerBotState extends State<CleanerBot> {
  String _connectionStatus = "NONE";
  void getDevices() async {
    print("Dipam Sen");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Cleaner Bot',
          style: TextStyle(
              fontFamily: 'AlgreyaSans',
              fontWeight: FontWeight.bold,
              fontSize: 24),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            child: Text(_connectionStatus,
                style: TextStyle(fontFamily: "AlgreyaSans", fontSize: 20)),
            onPressed: getDevices,
          )
        ],
      ),
    );
  }
}
