import 'package:flutter/material.dart';
import 'package:path/src/context.dart';

class SimpleResult extends StatelessWidget {
  SimpleResult({@required this.left, this.right});
  final int left;
  final int right;
  String result;
  @override
  Widget build(BuildContext context) {
    if (left > right) {
      result = "LEFT DICS IS WINNING";
    } else {
      result = "RIGHT DICS IS WINNING";
    }

    return WillPopScope(
      //onWillPop: _onBackPressed,
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text('RESULT'),
            backgroundColor: Colors.purpleAccent,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  child: Center(
                    child: Text(
                      'YOUR RESULT',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "LEFT DICS SCORE " + left.toString(),
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20.0,
                      ),
                    ),
                    Text(
                      "RIGHT DICS SCORES" + right.toString(),
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20.0,
                      ),
                    ),
                    Text(
                      result,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
