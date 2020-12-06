import 'package:flutter/material.dart';
import 'SimpleDics.dart';
import 'package:path/src/context.dart';

class Simple extends StatefulWidget {
  @override
  _SimpleState createState() => _SimpleState();
}

class _SimpleState extends State<Simple> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(
          title: Text('SIMPLE LEVEL'),
          backgroundColor: Colors.purpleAccent,
        ),
        body: Dice(),
      ),
    );
  }

  Future<bool> _onBackPressed() {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("ARE YOU WANT TO CLOSE THE APP"),
        actions: [
          FlatButton(
            child: Text("NO"),
            onPressed: () => Navigator.pop(context, false),
          ),
          FlatButton(
            child: Text("Yes"),
            onPressed: () => Navigator.pop(context, true),
          ),
        ],
      ),
    );
  }
}
