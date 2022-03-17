import 'dart:async';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sequence_animation/flutter_sequence_animation.dart';
import 'package:lottie/lottie.dart';


// ignore: camel_case_types
class quickrollingballpage extends StatefulWidget {

  String name;
  String pic;
  String email;

  quickrollingballpage({
    Key? key,
    required this.name,
    required this.pic,
    required this.email
  }) : super(key: key);

  @override
  _quickrollingballpageState createState() => _quickrollingballpageState();
}

// ignore: camel_case_types
class _quickrollingballpageState extends State<quickrollingballpage> with TickerProviderStateMixin {

  bool set2 = false;
  CollectionReference reference = FirebaseFirestore.instance.collection('Rolling Ball Slide Puzzle(1)');

  var number = [
    'assets/rollingball/1.png',
    'assets/rollingball/Untitled.png',
    'assets/rollingball/3.png',
    'assets/rollingball/8.png',
    'assets/rollingball/4.jpeg',
    'assets/rollingball/6.png',
    'assets/rollingball/7.png',
    'assets/rollingball/5.png',
    0,
  ];

  bool givecheck1 = false;
  bool givecheck2 = false;
  bool givecheck3 = false;
  bool givecheck4 = false;
  bool check1 = false;
  bool check2 = false; // 0
  bool check3 = false;
  bool check5 = false; // n1
  bool check6 = false;
  bool check7 = false;
  bool check9 = false; // 2
  bool check10 = false;
  bool check11 = false;
  bool check13 = false; // 3
  bool start = false;
  bool gotostart = false;
  bool goball = false;
  int move = 0;
  int secondsPassed = 0;

  Timer? timer;
  static const duration = Duration(
      seconds: 1
  );

  late AnimationController animationController;
  late AnimationController animationController2;
  late AnimationController animationController3;
  late Animation<double> animation;
  late AnimationStatus animationStatus = AnimationStatus.dismissed;
  late SequenceAnimation sequenceAnimation;
  late SequenceAnimation widgetAnimation;
  late SequenceAnimation ballgoingAnimation;
  late AnimationController animationController4;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    number.shuffle();

    animationController4 = AnimationController(
        vsync: this
    );

    animationController = AnimationController(
        vsync: this
    );

    animationController2 = AnimationController(
        vsync: this
    );

    animationController3 = AnimationController(
        vsync: this,
        duration: const Duration(
            seconds: 2
        )
    );

    animation = Tween<double>(
        end: 1,
        begin: 0
    ).animate(animationController3)
      ..addListener(() {
        setState(() {

        });
      })
      ..addStatusListener((status) {
        animationStatus = status;
      });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
    animationController2.dispose();
    animationController3.dispose();
    animationController4.dispose();
  }
  double dragPosition = 0;

  @override
  Widget build(BuildContext context) {

    final angle = dragPosition / 180 * pi;
    final transform = Matrix4.identity()
      ..setEntry(3, 2, 0.001)
      ..rotateX(angle);

    final size = MediaQuery.of(context).size;
    // ignore: unnecessary_null_comparison, prefer_conditional_assignment
    if(timer == null){
      timer = Timer.periodic(
          duration,
              (timer) {
            starttime();
          });
    }

    widgetAnimation = SequenceAnimationBuilder()
        .addAnimatable(
        animatable: Tween<Offset>(
            begin: const Offset(0.0, 0.0),
            end: const Offset(0.0, -50.0)
        ),
        from: const Duration(seconds: 3),
        to: const Duration(seconds: 4),
        curve: Curves.ease,
        tag: "posbottom"
    ).addAnimatable(
        animatable: Tween<Offset>(
            begin: const Offset(0.0, 0.0),
            end: const Offset(-65.0, 0.0)
        ),
        from: const Duration(seconds: 4),
        to: const Duration(seconds: 5),
        curve: Curves.ease,
        tag: "widgetright1"
    ).addAnimatable(
        animatable: Tween<Offset>(
            begin: const Offset(0.0, 0.0),
            end: const Offset(-65.0, 0.0)
        ),
        from: const Duration(seconds: 4),
        to: const Duration(seconds: 5),
        curve: Curves.ease,
        tag: "widgetright2"
    ).addAnimatable(
        animatable: Tween<Offset>(
            begin: const Offset(0.0, 0.0),
            end: const Offset(0.0, 100.0)
        ),
        from: const Duration(seconds: 4),
        to: const Duration(seconds: 5),
        curve: Curves.ease,
        tag: "widgetdown1"
    ).addAnimatable(
        animatable: Tween<Offset>(
            begin: const Offset(0.0, 0.0),
            end: const Offset(130.0, 0.0)
        ),
        from: const Duration(seconds: 4),
        to: const Duration(seconds: 5),
        curve: Curves.ease,
        tag: "widgetleft1"
    ).addAnimatable(
        animatable: Tween<Offset>(
            begin: const Offset(0.0, 0.0),
            end: const Offset(0.0, -100.0)
        ),
        from: const Duration(seconds: 3),
        to: const Duration(seconds: 4),
        curve: Curves.ease,
        tag: "widgetup1"
    ).animate(animationController2);

    sequenceAnimation = SequenceAnimationBuilder()
        .addAnimatable(
        animatable: Tween<double>(
            begin:0.0,
            end: 130
        ),
        from: Duration.zero,
        to: const Duration(seconds: 2),
        curve: Curves.ease,
        tag: "height"
    ).addAnimatable(
        animatable: Tween<double>(
            begin: 0.0,
            end: MediaQuery.of(context).size.height / 3 + 150
        ),
        from: Duration.zero,
        to: const Duration(seconds: 2),
        curve: Curves.ease,
        tag: "height1"
    ).addAnimatable(
        animatable: Tween<double>(
            begin:0.0,
            end: MediaQuery.of(context).size.height / 3 + 150
        ),
        from: Duration.zero,
        to: const Duration(seconds: 2),
        curve: Curves.ease,
        tag: "height2"
    ).addAnimatable(
        animatable: Tween<double>(
            begin:0.0,
            end: MediaQuery.of(context).size.height / 3 + 300
        ),
        from: Duration.zero,
        to: const Duration(seconds: 2),
        curve: Curves.ease,
        tag: "height3"
    ).addAnimatable(
        animatable: Tween<double>(
            begin:0.0,
            end: MediaQuery.of(context).size.height / 3 + 300
        ),
        from: Duration.zero,
        to: const Duration(seconds: 2),
        curve: Curves.ease,
        tag: "height4"
    ).addAnimatable(
        animatable: Tween<double>(
            begin:0.0,
            end: MediaQuery.of(context).size.height / 3 + 500
        ),
        from: Duration.zero,
        to: const Duration(seconds: 2),
        curve: Curves.ease,
        tag: "height5"
    ).addAnimatable(
        animatable: Tween<double>(
            begin:0.0,
            end: MediaQuery.of(context).size.height / 3 + 525
        ),
        from: Duration.zero,
        to: const Duration(seconds: 2),
        curve: Curves.ease,
        tag: "height6"
    ).addAnimatable(
        animatable: Tween<double>(
            begin:0.0,
            end: MediaQuery.of(context).size.height / 4 + 450
        ),
        from: Duration.zero,
        to: const Duration(seconds: 2),
        curve: Curves.ease,
        tag: "gotobottom1"
    ).addAnimatable(
        animatable: Tween<double>(
            begin:0.0,
            end: MediaQuery.of(context).size.height / 4 + 150
        ),
        from: Duration.zero,
        to: const Duration(seconds: 2),
        curve: Curves.ease,
        tag: "gotobottom"
    ).addAnimatable(
        animatable: Tween<EdgeInsets>(
            begin: const EdgeInsets.only(bottom: 0.0),
            end: const EdgeInsets.only(bottom: 50)
        ),
        from: const Duration(seconds: 2),
        to: const Duration(seconds: 3),
        curve: Curves.ease,
        tag: "heighttoo"
    ).addAnimatable(
        animatable: Tween<EdgeInsets>(
            begin: const EdgeInsets.only(bottom: 0.0),
            end: const EdgeInsets.only(bottom: 250)
        ),
        from: const Duration(seconds: 3),
        to: const Duration(seconds: 4),
        curve: Curves.ease,
        tag: "uptop"
    ).addAnimatable(
        animatable: Tween<EdgeInsets>(
            begin: const EdgeInsets.only(top: 0.0),
            end: const EdgeInsets.only(top: 150)
        ),
        from: const Duration(seconds: 3),
        to: const Duration(seconds: 4),
        curve: Curves.ease,
        tag: "bottom1"
    ).addAnimatable(
        animatable: Tween<EdgeInsets>(
            begin: const EdgeInsets.only(left: double.infinity / 4),
            end: const EdgeInsets.only(left: 100)
        ),
        from: const Duration(seconds: 3),
        to: const Duration(seconds: 4),
        curve: Curves.ease,
        tag: "left"
    ).addAnimatable(
        animatable: Tween<double>(
            begin: MediaQuery.of(context).size.width / 11 - 10, //const EdgeInsets.only(left: 25),
            end: MediaQuery.of(context).size.width / 4 + 70 //const EdgeInsets.only(left: 124)
        ),
        from: const Duration(seconds: 3),
        to: const Duration(seconds: 4),
        curve: Curves.ease,
        tag: "left1"
    ).addAnimatable(
        animatable: Tween<double>(
            begin: MediaQuery.of(context).size.width / 4 + 100,
            end: MediaQuery.of(context).size.width / 14 + 190
        ),
        from: const Duration(seconds: 3),
        to: const Duration(seconds: 4),
        curve: Curves.ease,
        tag: "left2"
    ).addAnimatable(
        animatable: Tween<double>(
            begin: MediaQuery.of(context).size.width / 4 + 70,
            end: MediaQuery.of(context).size.width / 14 + 270
        ),
        from: const Duration(seconds: 3),
        to: const Duration(seconds: 4),
        curve: Curves.ease,
        tag: "left3"
    ).addAnimatable(
        animatable: Tween<EdgeInsets>(
            begin: const EdgeInsets.only(top: 0.0),
            end: const EdgeInsets.only(top: 50)
        ),
        from: const Duration(seconds: 5),
        to: const Duration(seconds: 6),
        curve: Curves.ease,
        tag: "heightdown"
    ).addAnimatable(
        animatable: Tween<Offset>(
            begin: const Offset(0.0, 0.0),
            end: const Offset(-75.0, 0.0)
        ),
        from: const Duration(seconds: 2),
        to: const Duration(seconds: 3),
        curve: Curves.ease,
        tag: "heightpuzzle"
    ).addAnimatable(
        animatable: Tween<EdgeInsets>(
            begin: const EdgeInsets.only(left: 0),
            end: const EdgeInsets.only(bottom: 75)
        ),
        from: const Duration(seconds: 3),
        to: const Duration(seconds: 4),
        curve: Curves.ease,
        tag: "leftpuzzle"
    ).addAnimatable(
        animatable: Tween<double>(
            begin: MediaQuery.of(context).size.width / 4 + 70,
            end: MediaQuery.of(context).size.width / 11 - 10
        ),
        from: const Duration(seconds: 3),
        to: const Duration(seconds: 4),
        curve: Curves.ease,
        tag: "right"
    ).addAnimatable(
        animatable: Tween<double>(
            begin: MediaQuery.of(context).size.width / 14 + 200,
            end: MediaQuery.of(context).size.width / 4 + 30
        ),
        from: const Duration(seconds: 3),
        to: const Duration(seconds: 4),
        curve: Curves.ease,
        tag: "right1"
    ).addAnimatable(
        animatable: Tween<double>(
            begin: MediaQuery.of(context).size.width / 14 + 270,
            end: MediaQuery.of(context).size.width / 4 + 70
        ),
        from: const Duration(seconds: 3),
        to: const Duration(seconds: 4),
        curve: Curves.ease,
        tag: "right2"
    ).addAnimatable(
        animatable: Tween<EdgeInsets>(
            begin: const EdgeInsets.only(bottom: 0.0),
            end: const EdgeInsets.only(bottom: 50)
        ),
        from: const Duration(seconds: 2),
        to: const Duration(seconds: 3),
        curve: Curves.ease,
        tag: "widgettopandbottom"
    ).addAnimatable(
        animatable: Tween<EdgeInsets>(
            begin: const EdgeInsets.only(left: 0.0),
            end: const EdgeInsets.only(left: 75)
        ),
        from: const Duration(seconds: 3),
        to: const Duration(seconds: 4),
        curve: Curves.ease,
        tag: "widgetleft"
    ).animate(animationController);

    ballgoingAnimation = SequenceAnimationBuilder()
        .addAnimatable(
        animatable: Tween<double>(
          begin: MediaQuery.of(context).size.height / 12.5,
          end: MediaQuery.of(context).size.height / 12,
        ),
        from: const Duration(seconds: 0),
        to: const Duration(seconds: 2),
        curve: Curves.ease,
        tag: 'ballbottom1'
    )
        .addAnimatable(
        animatable: Tween<double>(
          begin: MediaQuery.of(context).size.width / 1.7,
          end: MediaQuery.of(context).size.width / 4.9,
        ),
        from: const Duration(seconds: 2),
        to: const Duration(seconds: 3),
        curve: Curves.ease,
        tag: 'ballleft1'
    )
        .addAnimatable(
        animatable: Tween<double>(
            begin: MediaQuery.of(context).size.height / 12,
            end: MediaQuery.of(context).size.height / 2.8
        ),
        from: const Duration(seconds: 3),
        to: const Duration(seconds: 4),
        curve: Curves.ease,
        tag: 'ballgobottom1'
    )
        .addAnimatable(
        animatable: Tween<double>(
            begin: MediaQuery.of(context).size.width / 4.9,
            end: MediaQuery.of(context).size.width / 13
        ),
        from: const Duration(seconds: 4),
        to: const Duration(seconds: 5),
        curve: Curves.ease,
        tag: 'ballleft2'
    ).animate(animationController4);

    CollectionReference ref = FirebaseFirestore.instance.collection(widget.name + ' Rolling Ball Slide Puzzle(1)');
    double ball1 = size.height / 9;
    double ball2 = size.height / 3.8;
    double ball3 = size.height / 2.4;
    double ballleft1 = size.width / 6.1;
    double ballleft2 = size.width / 2.2;
    double ballleft3 = size.width / 1.28;

    double ballnumber1 = size.height / 6.7;
    double ballnumber2 = size.height / 3.4;
    double ballnumber3 = size.height / 2.2;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: const Text(
            'Rolling Ball Slide Puzzle (1)',
          ),
        ),
        body: SafeArea(
          child: ListView(
            children: [
              Stack(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: Container(
                          height: size.height * 0.60,
                          color: Colors.indigo,
                          child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: GridView.builder(
                                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                ),
                                itemCount: number.length,
                                itemBuilder: (context, index){
                                  final numbers = number[index];

                                  return number[index] != 0 ?
                                  InkWell(
                                      onTap: () async {
                                        if(secondsPassed == 0){
                                          start = true;
                                        }
                                        if(gotostart == true && set2 != true) {
                                          if (index - 1 >= 0 && number[index - 1] == 0 && index % 3 != 0 || //left
                                              index + 1 < 9 && number[index + 1] == 0 && (index + 1) % 3 != 0 || // right
                                              (index - 3 >= 0 && number[index - 3] == 0) || // Up
                                              (index + 3 < 9 && number[index + 3] == 0) // down
                                          ) {
                                            setState(() {
                                              number[number.indexOf(0)] = number[index];
                                              number[index] = 0;
                                              move++;
                                            });
                                          }
                                        } else {
                                          return;
                                        }
                                      },
                                      child: gotostart != true ?
                                      Transform(
                                          transform: Matrix4.identity()
                                            ..setEntry(3, 2, 0.002)
                                            ..rotateY(pi * animation.value),
                                          child: gotostart == true ?
                                          Container(
                                            height: size.height * 60,
                                            decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        "https://lh3.googleusercontent.com/wEpdmU0qYb6-FPLeAwhPGpOG9x9YNz5bXKy1DiLled1xr5HtqwFYAUGIfnr7nNgoKN20WhBQTTs1XoC9aLDUDXx1VkjqEAWgLoaSXWbyek3pkltmYDRaNgPvmcswzZFUg95qDYcURfo=w400"
                                                    ),
                                                    fit: BoxFit.cover
                                                )
                                            ),
                                            child: Center(
                                              child: Text(
                                                '$numbers',
                                                style: const TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white
                                                ),
                                              ),
                                            ),
                                          ) :
                                          Container(
                                            height: size.height * 60,
                                            decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "assets/dash-facing-front.jpeg"
                                                    ),
                                                    fit: BoxFit.cover
                                                )
                                            ),
                                            child: const Center(
                                              child: Text(
                                                '',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white
                                                ),
                                              ),
                                            ),
                                          )
                                      ) :
                                      Container(
                                        height: size.height * 60,
                                        child: Center(
                                          child: Image.asset(
                                            '$numbers',
                                          ),
                                        ),
                                      )
                                  ) :
                                  Padding(
                                      padding: const EdgeInsets.only(top: 5, left: 5),
                                      child: Container(
                                          height: size.height * 0.60,
                                          decoration: const BoxDecoration(
                                              color: Colors.indigo,
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(10),
                                                topLeft: Radius.circular(10),
                                                bottomRight: Radius.circular(10),
                                                bottomLeft: Radius.circular(10),
                                              )
                                          ),
                                          child: const Center(
                                            child: Text(
                                              '',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black
                                              ),
                                            ),
                                          )
                                      )
                                  );
                                },
                              )
                          )
                      )
                  ),
                  'assets/rollingball/3.png' == number[0] && gotostart == true && set2 != true ?
                  Padding(
                      padding: EdgeInsets.only(top: ball1),
                      child: Container(
                        padding: EdgeInsets.only(left: ballleft1),
                        child: Image.asset(
                            'assets/ball.png'
                        ),
                      )
                  ) :
                  'assets/rollingball/3.png' == number[1] && gotostart == true && set2 != true ?
                  Padding(
                      padding: EdgeInsets.only(top: ball1),
                      child: Container(
                        padding: EdgeInsets.only(left: ballleft2),
                        child: Image.asset(
                            'assets/ball.png'
                        ),
                      )
                  ) :
                  'assets/rollingball/3.png' == number[2] && gotostart == true && set2 != true ?
                  Padding(
                      padding: EdgeInsets.only(top: ball1),
                      child: Container(
                        padding: EdgeInsets.only(left: ballleft3),
                        child: Image.asset(
                            'assets/ball.png'
                        ),
                      )
                  ) :
                  'assets/rollingball/3.png' == number[3] && gotostart == true && set2 != true ?
                  Padding(
                      padding: EdgeInsets.only(top: ball2),
                      child: Container(
                        padding: EdgeInsets.only(left: ballleft1),
                        child: Image.asset(
                            'assets/ball.png'
                        ),
                      )
                  ) :
                  'assets/rollingball/3.png' == number[4] && gotostart == true && set2 != true ?
                  Padding(
                      padding: EdgeInsets.only(top: ball2),
                      child: Container(
                        padding: EdgeInsets.only(left: ballleft2),
                        child: Image.asset(
                            'assets/ball.png'
                        ),
                      )
                  ) :
                  'assets/rollingball/3.png' == number[5] && gotostart == true && set2 != true ?
                  Padding(
                      padding: EdgeInsets.only(top: ball2),
                      child: Container(
                        padding: EdgeInsets.only(left: ballleft3),
                        child: Image.asset(
                            'assets/ball.png'
                        ),
                      )
                  ) :
                  'assets/rollingball/3.png' == number[6] && gotostart == true && set2 != true ?
                  Padding(
                      padding: EdgeInsets.only(top: ball3),
                      child: Container(
                        padding: EdgeInsets.only(left: ballleft1),
                        child: Image.asset(
                            'assets/ball.png'
                        ),
                      )
                  ) :
                  'assets/rollingball/3.png' == number[7] && gotostart == true && set2 != true ?
                  Padding(
                      padding: EdgeInsets.only(top: ball3),
                      child: Container(
                        padding: EdgeInsets.only(left: ballleft2),
                        child: Image.asset(
                            'assets/ball.png'
                        ),
                      )
                  ) :
                  'assets/rollingball/3.png' == number[8] && gotostart == true && set2 != true ?
                  Padding(
                      padding: EdgeInsets.only(top: ball3),
                      child: Container(
                        padding: EdgeInsets.only(left: ballleft3),
                        child: Image.asset(
                            'assets/ball.png'
                        ),
                      )
                  ) :
                  Container(),
                  'assets/rollingball/1.png' == number[0] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber1),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft1),
                          child: const Text(
                            '1',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/1.png' == number[1] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber1),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft2),
                          child: const Text(
                            '1',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/1.png' == number[2] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber1),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft3),
                          child: const Text(
                            '1',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/1.png' == number[3] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber2),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft1),
                          child: const Text(
                            '1',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/1.png' == number[4] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber2),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft2),
                          child: const Text(
                            '1',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/1.png' == number[5] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber2),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft3),
                          child: const Text(
                            '1',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/1.png' == number[6] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber3),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft1),
                          child: const Text(
                            '1',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/1.png' == number[7] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber3),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft2),
                          child: const Text(
                            '1',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/1.png' == number[8] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber3),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft3),
                          child: const Text(
                            '1',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  Container(),
                  'assets/rollingball/Untitled.png' == number[0] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber1),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft1),
                          child: const Text(
                            '2',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/Untitled.png' == number[1] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber1),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft2),
                          child: const Text(
                            '2',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/Untitled.png' == number[2] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber1),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft3),
                          child: const Text(
                            '2',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/Untitled.png' == number[3] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber2),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft1),
                          child: const Text(
                            '2',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/Untitled.png' == number[4] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber2),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft2),
                          child: const Text(
                            '2',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/Untitled.png' == number[5] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber2),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft3),
                          child: const Text(
                            '2',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/Untitled.png' == number[6] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber3),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft1),
                          child: const Text(
                            '2',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/Untitled.png' == number[7] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber3),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft2),
                          child: const Text(
                            '2',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/Untitled.png' == number[8] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber3),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft3),
                          child: const Text(
                            '2',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  Container(),
                  'assets/rollingball/3.png' == number[0] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber1),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft1),
                          child: const Text(
                            '3',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/3.png' == number[1] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber1),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft2),
                          child: const Text(
                            '3',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/3.png' == number[2] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber1),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft3),
                          child: const Text(
                            '3',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/3.png' == number[3] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber2),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft1),
                          child: const Text(
                            '3',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/3.png' == number[4] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber2),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft2),
                          child: const Text(
                            '3',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/3.png' == number[5] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber2),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft3),
                          child: const Text(
                            '3',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/3.png' == number[6] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber3),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft1),
                          child: const Text(
                            '3',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/3.png' == number[7] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber3),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft2),
                          child: const Text(
                            '3',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/3.png' == number[8] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber3),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft3),
                          child: const Text(
                            '3',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  Container(),
                  'assets/rollingball/8.png' == number[0] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber1),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft1),
                          child: const Text(
                            '4',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/8.png' == number[1] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber1),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft2),
                          child: const Text(
                            '4',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/8.png' == number[2] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber1),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft3),
                          child: const Text(
                            '4',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/8.png' == number[3] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber2),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft1),
                          child: const Text(
                            '4',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/8.png' == number[4] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber2),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft2),
                          child: const Text(
                            '4',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/8.png' == number[5] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber2),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft3),
                          child: const Text(
                            '4',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/8.png' == number[6] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber3),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft1),
                          child: const Text(
                            '4',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/8.png' == number[7] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber3),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft2),
                          child: const Text(
                            '4',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/8.png' == number[8] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber3),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft3),
                          child: const Text(
                            '4',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  Container(),
                  'assets/rollingball/4.jpeg' == number[0] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber1),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft1),
                          child: const Text(
                            '5',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/4.jpeg' == number[1] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber1),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft2),
                          child: const Text(
                            '5',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/4.jpeg' == number[2] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber1),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft3),
                          child: const Text(
                            '5',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/4.jpeg' == number[3] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber2),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft1),
                          child: const Text(
                            '5',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/4.jpeg' == number[4] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber2),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft2),
                          child: const Text(
                            '5',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/4.jpeg' == number[5] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber2),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft3),
                          child: const Text(
                            '5',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/4.jpeg' == number[6] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber3),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft1),
                          child: const Text(
                            '5',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/4.jpeg' == number[7] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber3),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft2),
                          child: const Text(
                            '5',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/4.jpeg' == number[8] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber3),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft3),
                          child: const Text(
                            '5',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  Container(),
                  'assets/rollingball/6.png' == number[0] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber1),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft1),
                          child: const Text(
                            '6',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/6.png' == number[1] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber1),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft2),
                          child: const Text(
                            '6',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/6.png' == number[2] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber1),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft3),
                          child: const Text(
                            '6',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/6.png' == number[3] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber2),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft1),
                          child: const Text(
                            '6',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/6.png' == number[4] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber2),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft2),
                          child: const Text(
                            '6',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/6.png' == number[5] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber2),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft3),
                          child: const Text(
                            '6',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/6.png' == number[6] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber3),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft1),
                          child: const Text(
                            '6',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/6.png' == number[7] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber3),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft2),
                          child: const Text(
                            '6',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/6.png' == number[8] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber3),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft3),
                          child: const Text(
                            '6',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  Container(),
                  'assets/rollingball/7.png' == number[0] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber1),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft1),
                          child: const Text(
                            '7',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/7.png' == number[1] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber1),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft2),
                          child: const Text(
                            '7',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/7.png' == number[2] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber1),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft3),
                          child: const Text(
                            '7',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/7.png' == number[3] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber2),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft1),
                          child: const Text(
                            '7',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/7.png' == number[4] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber2),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft2),
                          child: const Text(
                            '7',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/7.png' == number[5] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber2),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft3),
                          child: const Text(
                            '7',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/7.png' == number[6] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber3),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft1),
                          child: const Text(
                            '7',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/7.png' == number[7] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber3),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft2),
                          child: const Text(
                            '7',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/7.png' == number[8] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber3),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft3),
                          child: const Text(
                            '7',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  Container(),
                  'assets/rollingball/5.png' == number[0] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber1),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft1),
                          child: const Text(
                            '8',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/5.png' == number[1] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber1),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft2),
                          child: const Text(
                            '8',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/5.png' == number[2] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber1),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft3),
                          child: const Text(
                            '8',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/5.png' == number[3] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber2),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft1),
                          child: const Text(
                            '8',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/5.png' == number[4] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber2),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft2),
                          child: const Text(
                            '8',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/5.png' == number[5] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber2),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft3),
                          child: const Text(
                            '8',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/5.png' == number[6] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber3),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft1),
                          child: const Text(
                            '8',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/5.png' == number[7] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber3),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft2),
                          child: const Text(
                            '8',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  'assets/rollingball/5.png' == number[8] && gotostart == true ?
                  Padding(
                      padding: EdgeInsets.only(top: ballnumber3),
                      child: Container(
                          padding: EdgeInsets.only(left: ballleft3),
                          child: const Text(
                            '8',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.yellow
                            ),
                          )
                      )
                  ) :
                  Container(),
                  AnimatedBuilder(
                    animation: animationController4,
                    builder: (context, child){
                      return set2 == true &&
                          'assets/rollingball/3.png' == number[2] &&
                          'assets/rollingball/Untitled.png' == number[1] &&
                          'assets/rollingball/4.jpeg' == number[4] &&
                          'assets/rollingball/5.png' == number[7] &&
                          'assets/rollingball/7.png' == number[6] ?
                      Padding(
                          padding: EdgeInsets.only(top: ballgoingAnimation['ballbottom1'].value),
                          child: Padding(
                            padding: EdgeInsets.only(top: ballgoingAnimation['ballgobottom1'].value),
                            child: Container(
                                padding: EdgeInsets.only(left: ballgoingAnimation['ballleft1'].value),
                                child: Container(
                                  padding: EdgeInsets.only(left: ballgoingAnimation['ballleft2'].value),
                                  child: Image.asset(
                                      'assets/ball.png'
                                  ),
                                )
                            ),
                          )
                      ) :
                      Container();
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: set2 == true ?
                      const ElevatedButton(
                          onPressed: null,
                          child: Center(
                            child: Text(
                              'Finish',
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          )
                      ) :
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            gotostart = !gotostart;
                          });
                          if(gotostart == false){
                            number.shuffle();
                          }
                          if(animationStatus == AnimationStatus.dismissed){
                            animationController3.forward();
                          } else {
                            animationController3.reverse();
                          }
                        },
                        child: gotostart == true ?
                        const Center(
                          child: Text(
                            'Reset',
                            style: TextStyle(
                                color: Colors.white
                            ),
                          ),
                        ) :
                        const Center(
                          child: Text(
                            'Start',
                            style: TextStyle(
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          'Move: $move',
                          style: const TextStyle(
                              fontSize: 25,
                              color: Colors.yellow
                          ),
                        ),
                      )
                  ),
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          'Time: $secondsPassed',
                          style: const TextStyle(
                              fontSize: 25,
                              color: Colors.yellow
                          ),
                        ),
                      )
                  ),
                ],
              )
            ],
          )
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () async {
            setState(() {
              set2 = true;
            });

            await animationController4.forward().orCancel;

            reference.add({
              'who play name' : widget.name,
              'who play email' : widget.email,
              'who play pic' : widget.pic,
              'Move' : move.toString(),
              'Time' : secondsPassed.toString(),
              'Mark' : 'assets/rollingball/3.png' == number[2] &&
                  'assets/rollingball/Untitled.png' == number[1] &&
                  'assets/rollingball/4.jpeg' == number[4] &&
                  'assets/rollingball/5.png' == number[7] &&
                  'assets/rollingball/7.png' == number[6] ?
              '1/1' :
              '0/1',
            });

            ref.add({
              'name' : widget.name,
              'email' : widget.email,
              'pic' : widget.pic,
              'Move' : move.toString(),
              'Time' : secondsPassed.toString(),
              'Mark' : 'assets/rollingball/3.png' == number[2] &&
                  'assets/rollingball/Untitled.png' == number[1] &&
                  'assets/rollingball/4.jpeg' == number[4] &&
                  'assets/rollingball/5.png' == number[7] &&
                  'assets/rollingball/7.png' == number[6] ?
              '1/1' :
              '0/1',
            }).whenComplete(() async {
              await Future.delayed(
                  Duration(
                      seconds: 'assets/rollingball/3.png' == number[2] &&
                          'assets/rollingball/Untitled.png' == number[1] &&
                          'assets/rollingball/4.jpeg' == number[4] &&
                          'assets/rollingball/5.png' == number[7] &&
                          'assets/rollingball/7.png' == number[6] ?
                      5 :
                      3
                  ),
                      () {
                    showGeneralDialog(
                      barrierLabel: "Label",
                      barrierDismissible: false,
                      barrierColor: Colors.black.withOpacity(0.5),
                      transitionDuration: const Duration(milliseconds: 700),
                      context: context,
                      pageBuilder: (context, anim1, anim2) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)
                          ),
                          elevation: 0,
                          backgroundColor: Colors.transparent,
                          child: Stack(
                            children: [
                              Container(
                                padding: const EdgeInsets.only(
                                    top: 100,
                                    bottom: 16,
                                    left: 16,
                                    right: 16
                                ),
                                margin: const EdgeInsets.only(top: 16),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(17),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.black26,
                                          blurRadius: 10.0,
                                          offset: Offset(0.0, 10.0)
                                      )
                                    ]
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      children: [
                                        const Text(
                                          'Mark: ',
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 15),
                                          child: Text(
                                            'assets/rollingball/3.png' == number[2] &&
                                                'assets/rollingball/Untitled.png' == number[1] &&
                                                'assets/rollingball/4.jpeg' == number[4] &&
                                                'assets/rollingball/5.png' == number[7] &&
                                                'assets/rollingball/7.png' == number[6] ?
                                            '1/1' :
                                            '0/1',
                                            style: const TextStyle(
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.red
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'Time: $secondsPassed',
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 17
                                          ),
                                        )
                                      ],
                                    ),
                                    Text(
                                      'Move: $move',
                                      style: const TextStyle(
                                          fontSize: 18,
                                          color: Colors.black
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const SizedBox(
                                      height: 24,
                                    ),
                                    Align(
                                        alignment: Alignment.bottomRight,
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  style: ButtonStyle(
                                                      shape: MaterialStateProperty.all(
                                                        RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(16.0),
                                                        ),
                                                      ),
                                                      backgroundColor: MaterialStateProperty.all(Colors.blue)
                                                  ),
                                                  child: const Text(
                                                    'Back',
                                                    style: TextStyle(
                                                        color: Colors.white
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 0,
                                left: 16,
                                right: 16,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 50,
                                  child: Lottie.asset(
                                      'assets/33886-check-okey-done.json',
                                      repeat: true
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      transitionBuilder: (context, anim1, anim2, child) {
                        return SlideTransition(
                          position: Tween(begin: const Offset(0, 1), end: const Offset(0, 0)).animate(anim1),
                          child: child,
                        );
                      },
                    );
                  }
              );
            });
          },
          child: const Icon(
            Icons.check,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  void starttime() {
    if (start) {
      setState(() {
        secondsPassed += 1;
      });
    }
  }
}



