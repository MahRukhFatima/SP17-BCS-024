import 'package:flutter/material.dart';
import 'dart:math';
import 'SimpleResult.dart';

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int left_image = 0;
  int right_image = 0;
  int up_image = 0;
  int buttom_image = 0;
  int left_sum = 0;
  int right_sum = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 100),
        Row(
          children: [
            SizedBox(width: 20),
            Expanded(
              child: Image.asset('assets/imags/dice$left_image.png'),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Image.asset('assets/imags/dice$right_image.png'),
            ),
            SizedBox(width: 20),
          ],
        ),
        SizedBox(height: 50),
        FlatButton(
          onPressed: () {
            setState(
              () {
                right_image = Random().nextInt(6);
                left_image = Random().nextInt(6);
                right_sum = right_sum + right_image + 1;
                print(right_sum);
                left_sum = left_sum + left_image + 1;
                print(left_sum);
              },
            );
          },
          child: Container(
            child: Center(
              child: (Text(
                'PLAY',
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
                color: Colors.blueAccent,
                borderRadius: BorderRadiusDirectional.circular(20.0)),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    SimpleResult(left: left_sum, right: right_sum),
              ),
            );
          },
          child: Container(
            child: Center(
              child: (Text(
                'RESULT',
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
                color: Colors.black,
                borderRadius: BorderRadiusDirectional.circular(20.0)),
          ),
        )
      ],
    );
  }
}
