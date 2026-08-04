import 'dart:math' as math;

import 'package:flutter/material.dart';


void main(){
 return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Diceee', style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),),
          backgroundColor: Colors.red,
        ),
        body: DicePageStateNew(),
      ),
    )
  );
}
class DicePageStateNew extends StatefulWidget {
  const DicePageStateNew({super.key});

  @override
  State<DicePageStateNew> createState() => _DicePageStateState();
}

class _DicePageStateState extends State<DicePageStateNew> {


    int leftDiceNumber = 3;
    int rightDiceNumber = 5;

    void changeDice(){
                setState(() {
                  leftDiceNumber = math.Random().nextInt(6)+1;
                  rightDiceNumber = math.Random().nextInt(6)+1;
                });
    }
  @override
  Widget build(BuildContext context){

    return Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: (){
                  changeDice();
              }, child: Image.asset('assets/images/dice$leftDiceNumber.png'),
              ), ),
            Expanded(
              child: TextButton(onPressed: (){
                changeDice();
              }, child: Image.asset('assets/images/dice$rightDiceNumber.png'),),
            ),
          ],
        ),
    );
  }
}

// class DicePage extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){

//     int leftDiceNumber = 4;
//     return Center(
//         child: Row(
//           children: [
//             Expanded(
//               child: TextButton(
//                 onPressed: (){  
//                 print('Left button pressed!');
//               }, child: Image.asset('assets/images/dice$leftDiceNumber.png'),
//               ), ),
//             Expanded(
//               child: TextButton(onPressed: (){
//                 print('Right button pressed!');
//               }, child: Image.asset('assets/images/dice1.png'),),
//             ),
//           ],
//         ),
//     );
//   }
// }
