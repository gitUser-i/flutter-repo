import 'package:flutter/material.dart';


// ****************************************************Xylphone App*************************************************************************** */
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  Expanded soundColors(Color inputColor, String passColorName){

          return Expanded(
              child: ElevatedButton(
                onPressed: (){},
              style: ElevatedButton.styleFrom(
                backgroundColor: inputColor, shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                )
              ), 
               child: Text(passColorName, style: TextStyle(color: Colors.black),),),
            );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
        //   child: Container(
        //   child: Center(child: TextButton (onPressed: (){
        //     // final player = AudioPlayer();
        //     // player.play(AssetSource('sounds/file_example_WAV_1MG.wav'));
        //   }, child: Text('Click Me!', style: TextStyle(fontSize: 30),),),),

        // ),S
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            soundColors(Colors.red, 'Red'),
            soundColors(Colors.orange, 'Orange'),
            soundColors(Colors.yellow, 'Yellow'),
            soundColors(Colors.green, 'Green'),
            soundColors(Colors.teal, 'Teal'),
            soundColors(Colors.blue, 'Blue'),
            soundColors(Colors.purple, 'Purple'),

          //   Expanded(
          //     child: ElevatedButton(
          //       onPressed: (){},
          //     style: ElevatedButton.styleFrom(
          //       backgroundColor: Colors.red, shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(0),
          //       )
          //     ), 
          //      child: Text('Red'),),
          //   ),


          //   Expanded(
          //     child: ElevatedButton(
          //       onPressed: (){},
          //     style: ElevatedButton.styleFrom(
          //       backgroundColor: Colors.orange, shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(0),
          //       )
          //     ), 
          //      child: Text('Orange'),),
          //   ),

          //   Expanded(
          //     child: ElevatedButton(
          //       onPressed: (){},
          //     style: ElevatedButton.styleFrom(
          //       backgroundColor: Colors.yellow, shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(0),
          //       )
          //     ), 
          //      child: Text('Yellow'),),
          //   ),

          //  Expanded(
          //    child: ElevatedButton(
          //       onPressed: (){},
          //     style: ElevatedButton.styleFrom(
          //       backgroundColor: Colors.green, shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(0),
          //       )
          //     ), 
          //      child: Text('Green'),),
          //  ),

          // Expanded(
          //   child: ElevatedButton(
          //       onPressed: (){},
          //     style: ElevatedButton.styleFrom(
          //       backgroundColor: Colors.teal, shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(0),
          //       )
          //     ), 
          //      child: Text('Teal'),),
          // ),

            
          // Expanded(
          //   child: ElevatedButton(
          //       onPressed: (){},
          //     style: ElevatedButton.styleFrom(
          //       backgroundColor: Colors.blue, shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(0),
          //       )
          //     ), 
          //      child: Text('Blue'),),
          // ),

          //   Expanded(
          //     child: ElevatedButton(
          //       onPressed: (){},
          //     style: ElevatedButton.styleFrom(
          //       backgroundColor: Colors.purple, shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(0),
          //       )
          //     ), 
          //      child: Text('Purple'),),
          //   ),

            
          ],
        ),
        
        ),
    )
    );
  }
}

// ******************************************************Xylophone App end***************************************************** */