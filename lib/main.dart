import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
          home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
        ),
        body: EightBall(),
      )),
    );

class EightBall extends StatefulWidget {
  const EightBall({Key key}) : super(key: key);

  @override
  _EightBallState createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  int num = gen_new_num();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Container(
        child: TextButton(
          onPressed: () {
            setState(() {
              num = gen_new_num();
            });
          },
          child: Image(
            image: AssetImage(
              'images/ball$num.png',
            ),
          ),
        ),
      ),
    ));
  }
}

int gen_new_num() => Random().nextInt(5) + 1;