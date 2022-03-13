import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:puzzle_app/Chinese/chinese.dart';
import 'package:puzzle_app/Chinesegame/chinesegame1.dart';
import 'package:puzzle_app/Dashatar/Blue.dart';
import 'package:puzzle_app/Dashatar/Green.dart';
import 'package:puzzle_app/Dashatar/Yellow.dart';
import 'package:puzzle_app/English/english.dart';
import 'package:puzzle_app/Math/math.dart';
import 'package:puzzle_app/nextpuzzle/gameview.dart';
import 'package:puzzle_app/nextpuzzle/puzzletile.dart';
import 'package:puzzle_app/quick/mathgame.dart';
import 'package:puzzle_app/quick/quickblue.dart';
import 'package:puzzle_app/quick/quickgreen.dart';
import 'package:puzzle_app/quick/quickyellow.dart';
import 'package:puzzle_app/quickrollingball/quickrollingball.dart';
import 'package:puzzle_app/quickrollingball/quickrollingballgame.dart';
import 'package:puzzle_app/rolling%20ball/rollingballgame2.dart';
import 'package:puzzle_app/rolling%20ball/rollingballmath.dart';


// ignore: camel_case_types, must_be_immutable
class homepage extends StatefulWidget {

  String name;
  String pic;
  String email;

  homepage({
    Key? key,
    required this.name,
    required this.pic,
    required this.email
  }) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

// ignore: camel_case_types
class _homepageState extends State<homepage> {

  final colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];

  CollectionReference reference = FirebaseFirestore.instance.collection('All people Gmail');

  @override
  Widget build(BuildContext context) {

    CollectionReference ref = FirebaseFirestore.instance.collection(widget.name + ' Chinese Game(1)');
    CollectionReference referenc = FirebaseFirestore.instance.collection('Chinese Game(1)');

    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: AnimatedTextKit(
            animatedTexts: [
              ColorizeAnimatedText(
                  'Flutter Puzzle',
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'Horizon',
                    color: Colors.white
                  ),
                  colors: colorizeColors
              ),
            ],
            isRepeatingAnimation: true,
          )
      ),
      body: SafeArea(
        child: ListView(
          children: [
            const Padding(
                padding: EdgeInsets.only(top: 15, left: 10),
                child: Text(
                  'Animation Slide Puzzle',
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 21
                  ),
                )
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              PageRouteBuilder(
                                  transitionDuration: const Duration(
                                      seconds: 2
                                  ),
                                  transitionsBuilder: (context, animated, secAnimation, child){
                                    return ScaleTransition(
                                      alignment: Alignment.center,
                                      scale: animated,
                                      child: child,
                                    );
                                  },
                                  pageBuilder: (context, animated, secAnimation){
                                    return chinesegame1page(
                                      name: widget.name,
                                      email: widget.email,
                                      pic: widget.pic,
                                    );
                                  }
                              )
                          );
                        },
                        child: Container(
                          height: 100,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                              color: Colors.blue
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  '1',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              PageRouteBuilder(
                                  transitionDuration: const Duration(
                                      seconds: 2
                                  ),
                                  transitionsBuilder: (context, animated, secAnimation, child){
                                    return ScaleTransition(
                                      alignment: Alignment.center,
                                      scale: animated,
                                      child: child,
                                    );
                                  },
                                  pageBuilder: (context, animated, secAnimation){
                                    return bluedashatarpage(
                                      name: widget.name,
                                      email: widget.email,
                                      pic: widget.pic,
                                    );
                                  }
                              )
                          );
                        },
                        child: Container(
                          height: 100,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                              color: Colors.blue
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  '2',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              PageRouteBuilder(
                                  transitionDuration: const Duration(
                                      seconds: 2
                                  ),
                                  transitionsBuilder: (context, animated, secAnimation, child){
                                    return ScaleTransition(
                                      alignment: Alignment.center,
                                      scale: animated,
                                      child: child,
                                    );
                                  },
                                  pageBuilder: (context, animated, secAnimation){
                                    return greendashatarpage(
                                      name: widget.name,
                                      email: widget.email,
                                      pic: widget.pic,
                                    );
                                  }
                              )
                          );
                        },
                        child: Container(
                          height: 100,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                              color: Colors.blue
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  '3',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              PageRouteBuilder(
                                  transitionDuration: const Duration(
                                      seconds: 2
                                  ),
                                  transitionsBuilder: (context, animated, secAnimation, child){
                                    return ScaleTransition(
                                      alignment: Alignment.center,
                                      scale: animated,
                                      child: child,
                                    );
                                  },
                                  pageBuilder: (context, animated, secAnimation){
                                    return yellowdashatarpage(
                                      name: widget.name,
                                      email: widget.email,
                                      pic: widget.pic,
                                    );
                                  }
                              )
                          );
                        },
                        child: Container(
                          height: 100,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                              color: Colors.blue
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  '4',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.only(top: 50, left: 10),
              child: Text(
                'Quick Slide Puzzle',
                style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 21
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              PageRouteBuilder(
                                  transitionDuration: const Duration(
                                      seconds: 2
                                  ),
                                  transitionsBuilder: (context, animated, secAnimation, child){
                                    return ScaleTransition(
                                      alignment: Alignment.center,
                                      scale: animated,
                                      child: child,
                                    );
                                  },
                                  pageBuilder: (context, animated, secAnimation){
                                    return mathgamepage(
                                      name: widget.name,
                                      email: widget.email,
                                      pic: widget.pic,
                                    );
                                  }
                              )
                          );
                        },
                        child: Container(
                          height: 100,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                              color: Colors.blue
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  '1',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              PageRouteBuilder(
                                  transitionDuration: const Duration(
                                      seconds: 2
                                  ),
                                  transitionsBuilder: (context, animated, secAnimation, child){
                                    return ScaleTransition(
                                      alignment: Alignment.center,
                                      scale: animated,
                                      child: child,
                                    );
                                  },
                                  pageBuilder: (context, animated, secAnimation){
                                    return quickbluepage(
                                      name: widget.name,
                                      email: widget.email,
                                      pic: widget.pic,
                                    );
                                  }
                              )
                          );
                        },
                        child: Container(
                          height: 100,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                              color: Colors.blue
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  '2',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              PageRouteBuilder(
                                  transitionDuration: const Duration(
                                      seconds: 2
                                  ),
                                  transitionsBuilder: (context, animated, secAnimation, child){
                                    return ScaleTransition(
                                      alignment: Alignment.center,
                                      scale: animated,
                                      child: child,
                                    );
                                  },
                                  pageBuilder: (context, animated, secAnimation){
                                    return quickgreenpage(
                                      name: widget.name,
                                      email: widget.email,
                                      pic: widget.pic,
                                    );
                                  }
                              )
                          );
                        },
                        child: Container(
                          height: 100,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                              color: Colors.blue
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  '3',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              PageRouteBuilder(
                                  transitionDuration: const Duration(
                                      seconds: 2
                                  ),
                                  transitionsBuilder: (context, animated, secAnimation, child){
                                    return ScaleTransition(
                                      alignment: Alignment.center,
                                      scale: animated,
                                      child: child,
                                    );
                                  },
                                  pageBuilder: (context, animated, secAnimation){
                                    return quickyellowpage(
                                      name: widget.name,
                                      email: widget.email,
                                      pic: widget.pic,
                                    );
                                  }
                              )
                          );
                        },
                        child: Container(
                          height: 100,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                              color: Colors.blue
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  '4',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.only(top: 50, left: 10),
              child: Text(
                'Animation Rolling Ball Sliding Puzzle',
                style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 21
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              PageRouteBuilder(
                                  transitionDuration: const Duration(
                                      seconds: 2
                                  ),
                                  transitionsBuilder: (context, animated, secAnimation, child){
                                    return ScaleTransition(
                                      alignment: Alignment.center,
                                      scale: animated,
                                      child: child,
                                    );
                                  },
                                  pageBuilder: (context, animated, secAnimation){
                                    return rollingball1page(
                                      name: widget.name,
                                      email: widget.email,
                                      pic: widget.pic,
                                    );
                                  }
                              )
                          );
                        },
                        child: Container(
                          height: 100,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                              color: Colors.blue
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  '1',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              PageRouteBuilder(
                                  transitionDuration: const Duration(
                                      seconds: 2
                                  ),
                                  transitionsBuilder: (context, animated, secAnimation, child){
                                    return ScaleTransition(
                                      alignment: Alignment.center,
                                      scale: animated,
                                      child: child,
                                    );
                                  },
                                  pageBuilder: (context, animated, secAnimation){
                                    return rollingballgame2page(
                                      name: widget.name,
                                      email: widget.email,
                                      pic: widget.pic,
                                    );
                                  }
                              )
                          );
                        },
                        child: Container(
                          height: 100,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                              color: Colors.blue
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  '2',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.only(top: 50, left: 10),
              child: Text(
                'Rolling Ball Sliding Puzzle',
                style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 21
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              PageRouteBuilder(
                                  transitionDuration: const Duration(
                                      seconds: 2
                                  ),
                                  transitionsBuilder: (context, animated, secAnimation, child){
                                    return ScaleTransition(
                                      alignment: Alignment.center,
                                      scale: animated,
                                      child: child,
                                    );
                                  },
                                  pageBuilder: (context, animated, secAnimation){
                                    return quickrollingballpage(
                                      name: widget.name,
                                      email: widget.email,
                                      pic: widget.pic,
                                    );
                                  }
                              )
                          );
                        },
                        child: Container(
                          height: 100,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                              color: Colors.blue
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  '1',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              PageRouteBuilder(
                                  transitionDuration: const Duration(
                                      seconds: 2
                                  ),
                                  transitionsBuilder: (context, animated, secAnimation, child){
                                    return ScaleTransition(
                                      alignment: Alignment.center,
                                      scale: animated,
                                      child: child,
                                    );
                                  },
                                  pageBuilder: (context, animated, secAnimation){
                                    return quickrollingballgamepage(
                                      name: widget.name,
                                      email: widget.email,
                                      pic: widget.pic,
                                    );
                                  }
                              )
                          );
                        },
                        child: Container(
                          height: 100,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                              color: Colors.blue
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  '2',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}




