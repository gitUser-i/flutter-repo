import 'dart:math' as math;
import 'package:flutter/material.dart';

void main() {
  runApp(MyWidgetState());
}

class MyWidgetState extends StatefulWidget {
  const MyWidgetState({super.key});

  @override
  State<MyWidgetState> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidgetState> {
  var movies = ['XYZ', 'PQR', 'ABC', 'POI'];
  var movies1 = ['XYZ', 'PQR', 'ABC', 'POI'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'It All Starts Here',
                style: TextStyle(color: Colors.white70, fontSize: 25),
              ),
              Text(
                'Mumbai',
                style: TextStyle(color: Colors.white70, fontSize: 11),
              ),
            ],
          ),
          // title: Text('It All Starts Here', style: TextStyle(color: Colors.white70, fontSize: 25),),
          backgroundColor: Colors.indigo[900],
          // iconTheme: IconThemeData(
          //   color: Colors.white70,
          //   size: 40,
          // ),
          actions: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: IconButton(
                icon: Icon(Icons.search, color: Colors.white70, size: 30),
                onPressed: () {
                  print('Search is clicked!');
                },
              ),
            ),

            // Icon(Icons.search, color: Colors.white70, size: 30,),
            SizedBox(width: 15),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: IconButton(
                icon: Icon(
                  Icons.circle_notifications_sharp,
                  color: Colors.white70,
                  size: 30,
                ),
                onPressed: () {
                  print('Notification clicked!');
                },
              ),
            ),
            SizedBox(width: 15),

            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: IconButton(
                icon: Icon(
                  Icons.qr_code_scanner_sharp,
                  color: Colors.white70,
                  size: 30,
                ),
                onPressed: () {
                  print('QR Clicked!');
                },
              ),
            ),
            SizedBox(width: 15),
          ],
        ),
        // backgroundColor:Colors.amber,
        // Text('Helloo!', style: TextStyle(color: Colors.black26, fontSize: 10, fontWeight: FontWeight.bold),),
        body: Column(
          children: [
            Container(
              height: 100,
              width: 428,
              color: Colors.white70,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movies1.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        width: 100,
                        height: 100,
                        child: Image.asset('assets/images/movie.png'),
                      ),
                      //                 Container(
                      //                   child: Text(movies1[index]),
                      // // // margin: EdgeInsets.only(top:10),
                      // // width: 10,
                      // // height: 10,
                      // ),
                    ],
                  );
                },
              ),
            ),

            // ],
            // );

            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.stretch,
            //   children: [
            //    Text('Phir se, \nromantic \nlate night movie \ndates shuru,', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.redAccent),),
            //    Image.asset('assets/images/Image-Copy.png')
            //   ],
            // )
            Container(
              height: 250,
              width: 428,
              color: Color(0xFF800000),
              // padding: EdgeInsets.all(30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          child: Text(
                            'Phir se, \nromantic \nlate night movie \ndates shuru,',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent,
                            
                              // SizedBox(width: 30,),
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          child: Text(
                            '#CinemaIsBack',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white70,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      height: double.infinity,
                      child: Image.asset(
                        'assets/images/Image - Copy.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: 350,
              width: 428,
              color: Colors.white70,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(30),
                        child: Text(
                          'Recommended Movies',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Text(
                              'See All',
                              style: TextStyle(color: Colors.red),
                            ),
                            Transform.rotate(
                              
                              angle: 180 * math.pi / 180,
                              child: Icon(Icons.arrow_back_ios_sharp, color: Colors.red,),
                              ),
                          ],
                        ),
                      ),

                      // Padding(padding: )
                    ],
                  ),

                  SizedBox(
                    height: 250,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: movies.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              width: 130,
                              height: 220,
                              margin: EdgeInsets.only(
                                left: index == 0 ? 17 : 13,
                              ),
                              // color: Colors.black87,
                              decoration: BoxDecoration(
                                color: Colors.black87,
                                borderRadius: BorderRadius.circular(9),
                              ),
                              clipBehavior: Clip.hardEdge,
                              child: Container(
                                child: Image.asset(
                                  'assets/images/Image - Copy.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(movies[index]),
                            ),
                          ],
                        );
                      },
                    ),
                  ),

                  // Row(
                  //   children: [
                  //     SizedBox(width: 15,),
                  //     Container(
                  //   height: 250,
                  //   width: 150,
                  //   color: Colors.tealAccent,
                  // ),
                  // SizedBox(width: 10,),
                  // Container(
                  //   height: 250,
                  //   width: 150,
                  //   color: Colors.red,
                  //   ),
                  //   SizedBox(width: 10,),

                  // Container(
                  //   height: 250,
                  //   width: 150,
                  //   color: Colors.blueAccent,
                  //   child: Column(
                  //     children: [
                  //       Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                  //     ],

                  //     // Container(
                  //     //   Column(

                  //     //   )
                  //     //   child: ,('Obsession', style: TextStyle(fontSize: 20),),

                  //     // )

                  //   )

                  // )
                  //   ],
                  // ),
                ],
              ),
            ),

            Container(
              height: 15,
              width: 380,
              color: Colors.red,
              margin: EdgeInsets.only(top: 40),
            ),

            Container(
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 120,
                        height: 50,
                        color: Colors.black12,
                        margin: EdgeInsets.only(left: 23),
                        child: IconButton(
                          icon: Icon(Icons.home, color: Colors.red, size: 30),
                          onPressed: () {
                            print('QR Clicked!');
                          },
                        ),
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 120,
                        height: 50,
                        color: Colors.black12,
                        // margin: EdgeInsets.only(left: 23),
                        child: IconButton(
                          icon: Icon(Icons.home, color: Colors.white, size: 30),
                          onPressed: () {
                            print('QR Clicked!');
                          },
                        ),
                      ),
                      Text(
                        'Buzz',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 142,
                        height: 50,
                        color: Colors.black12,
                        // margin: EdgeInsets.only(: 23),
                        child: IconButton(
                          icon: Icon(Icons.home, color: Colors.white, size: 30),
                          onPressed: () {
                            print('QR Clicked!');
                          },
                        ),
                      ),
                      Text(
                        'Profile',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),

        // floatingActionButton: FloatingActionButton(
        //           onPressed: () {},
        //           child: Icon(Icons.add),
        //         ),
      ),
    );
  }
}