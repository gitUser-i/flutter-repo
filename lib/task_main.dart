import 'dart:math' as math;
import 'package:flutter/material.dart';

// *****************************************Task 1************************************************
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BallPage(
      ),
    ),
  );
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
int ballNumber =5;

void changeBall(){
  setState(() {
    ballNumber = math.Random().nextInt(5)+1;
  });
}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          changeBall();
          print('I got Clicked!');
        },
        child: Image.asset('assets/images/ball$ballNumber.png',),
        // child: Container(
          
        // ),
      ),
    );
  }
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask me Anything', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 27),),
          backgroundColor: Colors.blue[900],
        ),
        body: Ball(),
    );
  }
}
                             


// ***********************************************************Task 1 End************************************* */