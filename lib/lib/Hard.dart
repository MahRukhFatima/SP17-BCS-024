import 'package:flutter/material.dart';

class Hard extends StatefulWidget {
  @override
  _HardState createState() => _HardState();
}

class _HardState extends State<Hard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: Text('Hard LEVEL'),
        backgroundColor: Colors.purpleAccent,
      ),
    );
  }

  Future<bool> _onBackPressed() {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("dfvsdfsdfvsd"),
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
