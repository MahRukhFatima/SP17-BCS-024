import 'package:flutter/material.dart';
import 'Hard.dart';
import 'Simple.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(40.0),
            child: InkWell(
              child: Material(
                elevation: 20.0,
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  height: 250,
                  width: 300,
                  child: ClipOval(
                    child: Image.asset('assets/imags/1.png'),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Simple(),
                ),
              );
            },
            child: Container(
              child: Center(
                child: (Text(
                  'SIMPLE',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Satisfy'),
                )),
              ),
              margin: EdgeInsets.all(30.0),
              height: 60,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadiusDirectional.circular(20.0)),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Hard(),
                ),
              );
            },
            child: Container(
              child: Center(
                child: (Text(
                  'HARD',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Satisfy'),
                )),
              ),
              margin: EdgeInsets.all(30.0),
              height: 60,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadiusDirectional.circular(20.0)),
            ),
          ),
        ],
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
