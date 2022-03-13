import 'dart:async';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sequence_animation/flutter_sequence_animation.dart';
import 'package:lottie/lottie.dart';


// ignore: camel_case_types
class rollingballgame2page extends StatefulWidget {

  String name;
  String pic;
  String email;

  rollingballgame2page({
    Key? key,
    required this.name,
    required this.pic,
    required this.email,
  }) : super(key: key);

  @override
  _rollingballgame2pageState createState() => _rollingballgame2pageState();
}

// ignore: camel_case_types
class _rollingballgame2pageState extends State<rollingballgame2page> with TickerProviderStateMixin {

  bool set2 = false;
  CollectionReference reference = FirebaseFirestore.instance.collection('Animation Rolling Ball Slide Puzzle(2)');

  var number = [
    /*
    'assets/rollingball2/Untitled.png',
    'assets/rollingball2/4.png',
    'assets/rollingball2/3.png',
    'assets/rollingball2/1.png',
    'assets/rollingball2/2.png'
    'assets/rollingball2/6.png',
    'assets/rollingball2/7.png',
    'assets/rollingball2/5.png',
     */
    'assets/rollingball2/6.png',
    'assets/rollingball2/4.png',
    'assets/rollingball2/3.png',
    'assets/rollingball2/1.png',
    'assets/rollingball2/Untitled.png',
    'assets/rollingball2/2.png',
    'assets/rollingball2/7.png',
    'assets/rollingball2/5.png',
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
          begin: MediaQuery.of(context).size.width / 900,
          end: MediaQuery.of(context).size.height / 30 + 100 ,
        ),
        from: const Duration(seconds: 0),
        to: const Duration(seconds: 2),
        curve: Curves.ease,
        tag: 'ballbottom1'
    )
    .addAnimatable(
      animatable: Tween<double>(
        begin: MediaQuery.of(context).size.width / 3 + 90,
        end: MediaQuery.of(context).size.width / 3 - 40
      ),
      from: const Duration(seconds: 2),
      to: const Duration(seconds: 3),
      curve: Curves.ease,
      tag: 'ballleft1'
    )
    .addAnimatable(
      animatable: Tween<double>(
        begin: MediaQuery.of(context).size.height / 30 + 100,
        end: MediaQuery.of(context).size.height / 30 + 225
      ),
      from: const Duration(seconds: 3),
      to: const Duration(seconds: 4),
      curve: Curves.ease,
      tag: 'ballbottom2'
    )
    .addAnimatable(
      animatable: Tween<double>(
        begin: MediaQuery.of(context).size.width / 3 - 50,
        end: MediaQuery.of(context).size.width / 3 - 130
      ),
      from: const Duration(seconds: 4),
      to: const Duration(seconds: 5),
      curve: Curves.ease,
      tag: 'ballleft2'
    )
             .animate(animationController4);

    CollectionReference ref = FirebaseFirestore.instance.collection(widget.name + ' Animation Rolling Ball Slide Puzzle(2)');
    double ball1 = size.height / 10 + 3;
    double ball2 = size.height / 4 + 16;
    double ball3 = size.height / 3 + 80;
    double ballleft1 = size.width / 10 + 19;
    double ballleft2 = size.width / 10 + 149;
    double ballleft3 = size.width / 10 + 279;

    double ballnumber1 = size.height / 10 + 20;
    double ballnumber2 = size.height / 4 + 40;
    double ballnumber3 = size.height / 3 + 100;

    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.indigo,
          appBar: AppBar(
            backgroundColor: Colors.indigo,
            title: const Text(
                'Rolling Ball Slide Puzzle (2)'
            ),
          ),
          body: SafeArea(
              child: Stack(
                  children: [
                    ListView(
                      children: [
                        AnimatedBuilder(
                          animation: animationController,
                          builder: (context, child){
                            return Stack(
                              children: [
                                Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 60),
                                      child: Container(
                                        height: size.height * 0.60,
                                        color: Colors.indigo,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: GridView.builder(
                                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 3,
                                            ),
                                            itemCount: number.length,
                                            itemBuilder: (context, index){
                                              final numbers = number[index];

                                              return number[index] != 0 ?
                                              Stack(
                                                  children: [
                                                    InkWell(
                                                        onTap: () async {
                                                          if(secondsPassed == 0){
                                                            start = true;
                                                          }
                                                          if(gotostart == true && set2 != true){
                                                            if(index - 1 >= 0 && number[index - 1] == 0 && index % 3 != 0 || //left
                                                                index + 1 < 9 && number[index + 1] == 0 && (index + 1) % 3 != 0 || // right
                                                                (index - 3 >= 0 && number[index - 3] == 0) || // Up
                                                                (index + 3 < 9 && number[index + 3] == 0) // down
                                                            ){
                                                              setState(() {
                                                                Future.delayed(
                                                                    const Duration(
                                                                        seconds: 4
                                                                    ),
                                                                        () {
                                                                      number[number.indexOf(0)] = number[index];
                                                                      number[index] = 0;
                                                                      move++;
                                                                    }
                                                                );
                                                                check1 = true;

                                                                index - 1 >= 0 && number[index - 1] == 0 && index % 3 != 0 ?//left
                                                                givecheck1 = true :
                                                                givecheck1 = false;

                                                                index + 1 < 9 && number[index + 1] == 0 && (index + 1) % 3 != 0 ?// right
                                                                givecheck2 = true :
                                                                givecheck2 = false;

                                                                (index - 3 >= 0 && number[index - 3] == 0) ?// Up
                                                                givecheck3 = true :
                                                                givecheck3 = false;

                                                                (index + 3 < 9 && number[index + 3] == 0) ? // down
                                                                givecheck4 = true :
                                                                givecheck4 = false;

                                                                number[0] == 0 ?
                                                                check2 = true :
                                                                check2 = false;

                                                                number[1] == 0 ?
                                                                check3 = true :
                                                                check3 = false;

                                                                number[2] == 0 ?
                                                                check5 = true :
                                                                check5 = false;

                                                                number[3] == 0 ?
                                                                check6 = true :
                                                                check6 = false;

                                                                number[4] == 0 ?
                                                                check7 = true :
                                                                check7 = false;

                                                                number[5] == 0 ?
                                                                check9 = true :
                                                                check9 = false;

                                                                number[6] == 0 ?
                                                                check10 = true :
                                                                check10 = false;

                                                                number[7] == 0 ?
                                                                check11 = true :
                                                                check11 = false;

                                                                number[8] == 0 ?
                                                                check13 = true :
                                                                check13 = false;
                                                              });
                                                              await animationController.forward().orCancel;
                                                              await animationController.reverse().orCancel;
                                                              await animationController2.forward().orCancel;
                                                              await animationController2.reverse().orCancel;
                                                              animationController3.forward();
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
                                                                child: Image.asset(
                                                                    '$numbers'
                                                                )
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
                                                        check2 == true && givecheck1 == true ?
                                                        AnimatedBuilder(
                                                          animation: animationController2,
                                                          builder: (context, child){
                                                            return Transform.translate(
                                                                offset: widgetAnimation["posbottom"].value,
                                                                child: Transform.translate(
                                                                    offset: widgetAnimation["widgetright1"].value,
                                                                    child: Container(
                                                                        height: size.height * 60,
                                                                        child: Image.asset(
                                                                            '$numbers'
                                                                        )
                                                                    )
                                                                )
                                                            );
                                                          },
                                                        ) :
                                                        check2 == true && givecheck2 == true ?
                                                        AnimatedBuilder(
                                                          animation: animationController2,
                                                          builder: (context, child){
                                                            return Transform.translate(
                                                                offset: widgetAnimation["posbottom"].value,
                                                                child: Transform.translate(
                                                                    offset: widgetAnimation["widgetleft1"].value,
                                                                    child: Container(
                                                                        height: size.height * 60,
                                                                        child: Image.asset(
                                                                            '$numbers'
                                                                        )
                                                                    )
                                                                )
                                                            );
                                                          },
                                                        ) :
                                                        check2 == true && givecheck3 == true ?
                                                        AnimatedBuilder(
                                                          animation: animationController2,
                                                          builder: (context, child){
                                                            return Transform.translate(
                                                                offset: widgetAnimation["widgetup1"].value,
                                                                child: Container(
                                                                    height: size.height * 60,
                                                                    child: Image.asset(
                                                                        '$numbers'
                                                                    )
                                                                )
                                                            );
                                                          },
                                                        ) :
                                                        check3 == true && givecheck3 == true ?
                                                        AnimatedBuilder(
                                                          animation: animationController2,
                                                          builder: (context, child){
                                                            return Transform.translate(
                                                                offset: widgetAnimation["widgetup1"].value,
                                                                child: Container(
                                                                    height: size.height * 60,
                                                                    child: Image.asset(
                                                                        '$numbers'
                                                                    )
                                                                )
                                                            );
                                                          },
                                                        ) :
                                                        check3 == true && givecheck1 == true ?
                                                        AnimatedBuilder(
                                                          animation: animationController2,
                                                          builder: (context, child){
                                                            return Transform.translate(
                                                                offset: widgetAnimation["posbottom"].value,
                                                                child: Transform.translate(
                                                                    offset: widgetAnimation["widgetright2"].value,
                                                                    child: Container(
                                                                        height: size.height * 60,
                                                                        child: Image.asset(
                                                                            '$numbers'
                                                                        )
                                                                    )
                                                                )
                                                            );
                                                          },
                                                        ) :
                                                        check3 == true && givecheck2 == true ?
                                                        AnimatedBuilder(
                                                          animation: animationController2,
                                                          builder: (context, child){
                                                            return Transform.translate(
                                                                offset: widgetAnimation["posbottom"].value,
                                                                child: Transform.translate(
                                                                    offset: widgetAnimation["widgetleft1"].value,
                                                                    child: Container(
                                                                        height: size.height * 60,
                                                                        child: Image.asset(
                                                                            '$numbers'
                                                                        )
                                                                    )
                                                                )
                                                            );
                                                          },
                                                        ) :
                                                        check5 == true && givecheck3 == true ?
                                                        AnimatedBuilder(
                                                          animation: animationController2,
                                                          builder: (context, child){
                                                            return Transform.translate(
                                                                offset: widgetAnimation["widgetup1"].value,
                                                                child: Container(
                                                                    height: size.height * 60,
                                                                    child: Image.asset(
                                                                        '$numbers'
                                                                    )
                                                                )
                                                            );
                                                          },
                                                        ) :
                                                        check5 == true && givecheck1 == true ?
                                                        AnimatedBuilder(
                                                          animation: animationController2,
                                                          builder: (context, child){
                                                            return Transform.translate(
                                                                offset: widgetAnimation["posbottom"].value,
                                                                child: Transform.translate(
                                                                    offset: widgetAnimation["widgetright2"].value,
                                                                    child: Container(
                                                                        height: size.height * 60,
                                                                        child: Image.asset(
                                                                            '$numbers'
                                                                        )
                                                                    )
                                                                )
                                                            );
                                                          },
                                                        ) :
                                                        check5 == true && givecheck2 == true ?
                                                        AnimatedBuilder(
                                                          animation: animationController2,
                                                          builder: (context, child){
                                                            return Transform.translate(
                                                                offset: widgetAnimation["posbottom"].value,
                                                                child: Transform.translate(
                                                                    offset: widgetAnimation["widgetleft1"].value,
                                                                    child: Container(
                                                                        height: size.height * 60,
                                                                        child: Image.asset(
                                                                            '$numbers'
                                                                        )
                                                                    )
                                                                )
                                                            );
                                                          },
                                                        ) :
                                                        check6 == true && givecheck3 == true ?
                                                        AnimatedBuilder(
                                                          animation: animationController2,
                                                          builder: (context, child){
                                                            return Transform.translate(
                                                                offset: widgetAnimation["widgetup1"].value,
                                                                child: Container(
                                                                    height: size.height * 60,
                                                                    child: Image.asset(
                                                                        '$numbers'
                                                                    )
                                                                )
                                                            );
                                                          },
                                                        ) :
                                                        check6 == true && givecheck1 == true ?
                                                        AnimatedBuilder(
                                                          animation: animationController2,
                                                          builder: (context, child){
                                                            return Transform.translate(
                                                                offset: widgetAnimation["posbottom"].value,
                                                                child: Transform.translate(
                                                                    offset: widgetAnimation["widgetright2"].value,
                                                                    child: Container(
                                                                        height: size.height * 60,
                                                                        child: Image.asset(
                                                                            '$numbers'
                                                                        )
                                                                    )
                                                                )
                                                            );
                                                          },
                                                        ) :
                                                        check6 == true && givecheck2 == true ?
                                                        AnimatedBuilder(
                                                          animation: animationController2,
                                                          builder: (context, child){
                                                            return Transform.translate(
                                                                offset: widgetAnimation["posbottom"].value,
                                                                child: Transform.translate(
                                                                    offset: widgetAnimation["widgetleft1"].value,
                                                                    child: Container(
                                                                        height: size.height * 60,
                                                                        child: Image.asset(
                                                                            '$numbers'
                                                                        )
                                                                    )
                                                                )
                                                            );
                                                          },
                                                        ) :
                                                        check6 == true && givecheck4 == true ?
                                                        AnimatedBuilder(
                                                          animation: animationController2,
                                                          builder: (context, child){
                                                            return Transform.translate(
                                                                offset: widgetAnimation["posbottom"].value,
                                                                child: Transform.translate(
                                                                    offset: widgetAnimation["widgetdown1"].value,
                                                                    child: Container(
                                                                        height: size.height * 60,
                                                                        child: Image.asset(
                                                                            '$numbers'
                                                                        )
                                                                    )
                                                                )
                                                            );
                                                          },
                                                        ) :
                                                        check7 == true && givecheck3 == true ?
                                                        AnimatedBuilder(
                                                          animation: animationController2,
                                                          builder: (context, child){
                                                            return Transform.translate(
                                                                offset: widgetAnimation["widgetup1"].value,
                                                                child: Container(
                                                                    height: size.height * 60,
                                                                    child: Image.asset(
                                                                        '$numbers'
                                                                    )
                                                                )
                                                            );
                                                          },
                                                        ) :
                                                        check7 == true && givecheck1 == true ?
                                                        AnimatedBuilder(
                                                          animation: animationController2,
                                                          builder: (context, child){
                                                            return Transform.translate(
                                                                offset: widgetAnimation["posbottom"].value,
                                                                child: Transform.translate(
                                                                    offset: widgetAnimation["widgetright2"].value,
                                                                    child: Container(
                                                                        height: size.height * 60,
                                                                        child: Image.asset(
                                                                            '$numbers'
                                                                        )
                                                                    )
                                                                )
                                                            );
                                                          },
                                                        ) :
                                                        check7 == true && givecheck2 == true ?
                                                        AnimatedBuilder(
                                                          animation: animationController2,
                                                          builder: (context, child){
                                                            return Transform.translate(
                                                                offset: widgetAnimation["posbottom"].value,
                                                                child: Transform.translate(
                                                                    offset: widgetAnimation["widgetleft1"].value,
                                                                    child: Container(
                                                                        height: size.height * 60,
                                                                        child: Image.asset(
                                                                            '$numbers'
                                                                        )
                                                                    )
                                                                )
                                                            );
                                                          },
                                                        ) :
                                                        check7 == true && givecheck4 == true ?
                                                        AnimatedBuilder(
                                                          animation: animationController2,
                                                          builder: (context, child){
                                                            return Transform.translate(
                                                                offset: widgetAnimation["posbottom"].value,
                                                                child: Transform.translate(
                                                                    offset: widgetAnimation["widgetdown1"].value,
                                                                    child: Container(
                                                                        height: size.height * 60,
                                                                        child: Image.asset(
                                                                            '$numbers'
                                                                        )
                                                                    )
                                                                )
                                                            );
                                                          },
                                                        ) :
                                                        check9 == true && givecheck3 == true ?
                                                        AnimatedBuilder(
                                                          animation: animationController2,
                                                          builder: (context, child){
                                                            return Transform.translate(
                                                                offset: widgetAnimation["widgetup1"].value,
                                                                child: Container(
                                                                    height: size.height * 60,
                                                                    child: Image.asset(
                                                                        '$numbers'
                                                                    )
                                                                )
                                                            );
                                                          },
                                                        ) :
                                                        check9 == true && givecheck1 == true ?
                                                        AnimatedBuilder(
                                                          animation: animationController2,
                                                          builder: (context, child){
                                                            return Transform.translate(
                                                                offset: widgetAnimation["posbottom"].value,
                                                                child: Transform.translate(
                                                                    offset: widgetAnimation["widgetright2"].value,
                                                                    child: Container(
                                                                        height: size.height * 60,
                                                                        child: Image.asset(
                                                                            '$numbers'
                                                                        )
                                                                    )
                                                                )
                                                            );
                                                          },
                                                        ) :
                                                        check9 == true && givecheck2 == true ?
                                                        AnimatedBuilder(
                                                          animation: animationController2,
                                                          builder: (context, child){
                                                            return Transform.translate(
                                                                offset: widgetAnimation["posbottom"].value,
                                                                child: Transform.translate(
                                                                    offset: widgetAnimation["widgetleft1"].value,
                                                                    child: Container(
                                                                        height: size.height * 60,
                                                                        child: Image.asset(
                                                                            '$numbers'
                                                                        )
                                                                    )
                                                                )
                                                            );
                                                          },
                                                        ) :
                                                        check9 == true && givecheck4 == true ?
                                                        AnimatedBuilder(
                                                          animation: animationController2,
                                                          builder: (context, child){
                                                            return Transform.translate(
                                                                offset: widgetAnimation["posbottom"].value,
                                                                child: Transform.translate(
                                                                    offset: widgetAnimation["widgetdown1"].value,
                                                                    child: Container(
                                                                        height: size.height * 60,
                                                                        child: Image.asset(
                                                                            '$numbers'
                                                                        )
                                                                    )
                                                                )
                                                            );
                                                          },
                                                        ) :
                                                        check10 == true && givecheck3 == true ?
                                                        AnimatedBuilder(
                                                          animation: animationController2,
                                                          builder: (context, child){
                                                            return Transform.translate(
                                                                offset: widgetAnimation["widgetup1"].value,
                                                                child: Container(
                                                                    height: size.height * 60,
                                                                    child: Image.asset(
                                                                        '$numbers'
                                                                    )
                                                                )
                                                            );
                                                          },
                                                        ) :
                                                        check10 == true && givecheck1 == true ?
                                                        AnimatedBuilder(
                                                          animation: animationController2,
                                                          builder: (context, child){
                                                            return Transform.translate(
                                                                offset: widgetAnimation["posbottom"].value,
                                                                child: Transform.translate(
                                                                    offset: widgetAnimation["widgetright2"].value,
                                                                    child: Container(
                                                                        height: size.height * 60,
                                                                        child: Image.asset(
                                                                            '$numbers'
                                                                        )
                                                                    )
                                                                )
                                                            );
                                                          },
                                                        ) :
                                                        check10 == true && givecheck2 == true ?
                                                        AnimatedBuilder(
                                                          animation: animationController2,
                                                          builder: (context, child){
                                                            return Transform.translate(
                                                                offset: widgetAnimation["posbottom"].value,
                                                                child: Transform.translate(
                                                                    offset: widgetAnimation["widgetleft1"].value,
                                                                    child: Container(
                                                                        height: size.height * 60,
                                                                        child: Image.asset(
                                                                            '$numbers'
                                                                        )
                                                                    )
                                                                )
                                                            );
                                                          },
                                                        ) :
                                                        check10 == true && givecheck4 == true ?
                                                        AnimatedBuilder(
                                                          animation: animationController2,
                                                          builder: (context, child){
                                                            return Transform.translate(
                                                                offset: widgetAnimation["posbottom"].value,
                                                                child: Transform.translate(
                                                                    offset: widgetAnimation["widgetdown1"].value,
                                                                    child: Container(
                                                                        height: size.height * 60,
                                                                        child: Image.asset(
                                                                            '$numbers'
                                                                        )
                                                                    )
                                                                )
                                                            );
                                                          },
                                                        ) :
                                                        check11 == true && givecheck3 == true ?
                                                        AnimatedBuilder(
                                                          animation: animationController2,
                                                          builder: (context, child){
                                                            return Transform.translate(
                                                                offset: widgetAnimation["widgetup1"].value,
                                                                child: Container(
                                                                    height: size.height * 60,
                                                                    child: Image.asset(
                                                                        '$numbers'
                                                                    )
                                                                )
                                                            );
                                                          },
                                                        ) :
                                                        check11 == true && givecheck1 == true ?
                                                        AnimatedBuilder(
                                                          animation: animationController2,
                                                          builder: (context, child){
                                                            return Transform.translate(
                                                                offset: widgetAnimation["posbottom"].value,
                                                                child: Transform.translate(
                                                                    offset: widgetAnimation["widgetright2"].value,
                                                                    child: Container(
                                                                        height: size.height * 60,
                                                                        child: Image.asset(
                                                                            '$numbers'
                                                                        )
                                                                    )
                                                                )
                                                            );
                                                          },
                                                        ) :
                                                        check11 == true && givecheck2 == true ?
                                                        AnimatedBuilder(
                                                          animation: animationController2,
                                                          builder: (context, child){
                                                            return Transform.translate(
                                                                offset: widgetAnimation["posbottom"].value,
                                                                child: Transform.translate(
                                                                    offset: widgetAnimation["widgetleft1"].value,
                                                                    child: Container(
                                                                        height: size.height * 60,
                                                                        child: Image.asset(
                                                                            '$numbers'
                                                                        )
                                                                    )
                                                                )
                                                            );
                                                          },
                                                        ) :
                                                        check11 == true && givecheck4 == true ?
                                                        AnimatedBuilder(
                                                          animation: animationController2,
                                                          builder: (context, child){
                                                            return Transform.translate(
                                                                offset: widgetAnimation["posbottom"].value,
                                                                child: Transform.translate(
                                                                    offset: widgetAnimation["widgetdown1"].value,
                                                                    child: Container(
                                                                        height: size.height * 60,
                                                                        child: Image.asset(
                                                                            '$numbers'
                                                                        )
                                                                    )
                                                                )
                                                            );
                                                          },
                                                        ) :
                                                        check13 == true && givecheck3 == true ?
                                                        AnimatedBuilder(
                                                          animation: animationController2,
                                                          builder: (context, child){
                                                            return Transform.translate(
                                                                offset: widgetAnimation["widgetup1"].value,
                                                                child: Container(
                                                                    height: size.height * 60,
                                                                    child: Image.asset(
                                                                        '$numbers'
                                                                    )
                                                                )
                                                            );
                                                          },
                                                        ) :
                                                        check13 == true && givecheck1 == true ?
                                                        AnimatedBuilder(
                                                          animation: animationController2,
                                                          builder: (context, child){
                                                            return Transform.translate(
                                                                offset: widgetAnimation["posbottom"].value,
                                                                child: Transform.translate(
                                                                    offset: widgetAnimation["widgetright2"].value,
                                                                    child: Container(
                                                                        height: size.height * 60,
                                                                        child: Image.asset(
                                                                            '$numbers'
                                                                        )
                                                                    )
                                                                )
                                                            );
                                                          },
                                                        ) :
                                                        check13 == true && givecheck2 == true ?
                                                        AnimatedBuilder(
                                                          animation: animationController2,
                                                          builder: (context, child){
                                                            return Transform.translate(
                                                                offset: widgetAnimation["posbottom"].value,
                                                                child: Transform.translate(
                                                                    offset: widgetAnimation["widgetleft1"].value,
                                                                    child: Container(
                                                                        height: size.height * 60,
                                                                        child: Image.asset(
                                                                            '$numbers'
                                                                        )
                                                                    )
                                                                )
                                                            );
                                                          },
                                                        ) :
                                                        check13 == true && givecheck4 == true ?
                                                        AnimatedBuilder(
                                                          animation: animationController2,
                                                          builder: (context, child){
                                                            return Transform.translate(
                                                                offset: widgetAnimation["posbottom"].value,
                                                                child: Transform.translate(
                                                                    offset: widgetAnimation["widgetdown1"].value,
                                                                    child: Container(
                                                                        height: size.height * 60,
                                                                        child: Image.asset(
                                                                            '$numbers'
                                                                        )
                                                                    )
                                                                )
                                                            );
                                                          },
                                                        ) :
                                                        Container(
                                                            height: size.height * 60,
                                                            child: Image.asset(
                                                                '$numbers'
                                                            )
                                                        )
                                                    ),
                                                  ]
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
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                check2 == true && givecheck2 == true ?
                                Padding(
                                  padding: sequenceAnimation["heightdown"].value,
                                  child: Padding(
                                    padding: sequenceAnimation["left"].value,
                                    child: Container(
                                      padding: sequenceAnimation["heighttoo"].value,
                                      width: 70,
                                      height: sequenceAnimation['height'].value,
                                      child: Image.network(
                                        'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                        width: 70,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                ) :
                                check2 == true && givecheck1 == true ?
                                Padding(
                                  padding: sequenceAnimation["heightdown"].value,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: sequenceAnimation["right"].value),
                                    child: Container(
                                      padding: sequenceAnimation["heighttoo"].value,
                                      width: 70,
                                      height: sequenceAnimation['height'].value,
                                      child: Image.network(
                                        'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                        width: 70,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                ) :
                                check2 == true && givecheck4 == true ?
                                Padding(
                                  padding: sequenceAnimation["heightdown"].value,
                                  child: Container(
                                    padding: sequenceAnimation["heighttoo"].value,
                                    width: 70,
                                    height: sequenceAnimation['height'].value,
                                    child: Image.network(
                                      'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                      width: 70,
                                      height: 50,
                                    ),
                                  ),
                                ) :
                                check2 == true && givecheck3 == true ?
                                Padding(
                                  padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 11 - 10),
                                  child: Container(
                                    padding: sequenceAnimation["uptop"].value,
                                    width: 70,
                                    height: sequenceAnimation['height1'].value,
                                    child: Image.network(
                                      'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                      width: 70,
                                      height: 50,
                                    ),
                                  ),
                                ) :
                                check3 == true && givecheck1 == true ?
                                Padding(
                                  padding: sequenceAnimation["heightdown"].value,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: sequenceAnimation["right2"].value),
                                    child: Container(
                                      padding: sequenceAnimation["heighttoo"].value,
                                      width: 70,
                                      height: sequenceAnimation['height'].value,
                                      child: Image.network(
                                        'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                        width: 70,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                ) :
                                check3 == true && givecheck2 == true ?
                                Padding(
                                    padding: sequenceAnimation["heightdown"].value,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: sequenceAnimation["left1"].value),
                                      child: Container(
                                        padding: sequenceAnimation["heighttoo"].value,
                                        width: 70,
                                        height: sequenceAnimation['height'].value,
                                        child: Image.network(
                                          'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                          width: 70,
                                          height: 50,
                                        ),
                                      ),
                                    )
                                ) :
                                check3 == true && givecheck3 == true ?
                                Padding(
                                  padding: const EdgeInsets.only(left: 174),
                                  child: Container(
                                    padding: sequenceAnimation["uptop"].value,
                                    width: 70,
                                    height: sequenceAnimation['height1'].value,
                                    child: Image.network(
                                      'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                      width: 70,
                                      height: 50,
                                    ),
                                  ),
                                ) :
                                check5 == true && givecheck2 == true ?
                                Padding(
                                  padding: sequenceAnimation["heightdown"].value,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: sequenceAnimation["left3"].value),
                                    child: Container(
                                      padding: sequenceAnimation["heighttoo"].value,
                                      width: 70,
                                      height: sequenceAnimation['height'].value,
                                      child: Image.network(
                                        'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                        width: 70,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                ) :
                                check5 == true && givecheck3 == true ?
                                Padding(
                                  padding: const EdgeInsets.only(left: 324),
                                  child: Container(
                                    padding: sequenceAnimation["uptop"].value,
                                    width: 70,
                                    height: sequenceAnimation['height1'].value,
                                    child: Image.network(
                                      'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                      width: 70,
                                      height: 50,
                                    ),
                                  ),
                                ) :
                                check6 == true && givecheck2 == true ?
                                Padding(
                                  padding: sequenceAnimation["heightdown"].value,
                                  child: Padding(
                                    padding: sequenceAnimation["left"].value,
                                    child: Container(
                                      padding: sequenceAnimation["heighttoo"].value,
                                      width: 70,
                                      height: sequenceAnimation['height1'].value,
                                      child: Image.network(
                                        'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                        width: 70,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                ) :
                                check6 == true && givecheck1 == true ?
                                Padding(
                                  padding: sequenceAnimation["heightdown"].value,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: sequenceAnimation["right"].value),
                                    child: Container(
                                      padding: sequenceAnimation["heighttoo"].value,
                                      width: 70,
                                      height: sequenceAnimation['height1'].value,
                                      child: Image.network(
                                        'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                        width: 70,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                ) :
                                check6 == true && givecheck4 == true ?
                                Padding(
                                  padding: const EdgeInsets.only(left: 25),
                                  child: Padding(
                                    padding: sequenceAnimation["bottom1"].value,
                                    child: Container(
                                      padding: sequenceAnimation["heighttoo"].value,
                                      width: 70,
                                      height: sequenceAnimation['height'].value,
                                      child: Image.network(
                                        'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                        width: 70,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                ) :
                                check6 == true && givecheck3 == true ?
                                Padding(
                                  padding: const EdgeInsets.only(left: 25),
                                  child: Container(
                                    padding: sequenceAnimation["uptop"].value,
                                    width: 70,
                                    height: sequenceAnimation['height3'].value,
                                    child: Image.network(
                                      'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                      width: 70,
                                      height: 50,
                                    ),
                                  ),
                                ) :
                                check7 == true && givecheck4 == true ?
                                Padding(
                                  padding: const EdgeInsets.only(left: 174),
                                  child: Padding(
                                    padding: sequenceAnimation["bottom1"].value,
                                    child: Container(
                                      padding: sequenceAnimation["heighttoo"].value,
                                      width: 70,
                                      height: sequenceAnimation['height'].value,
                                      child: Image.network(
                                        'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                        width: 70,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                ) :
                                check7 == true && givecheck1 == true ?
                                Padding(
                                  padding: sequenceAnimation["heightdown"].value,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: sequenceAnimation["right2"].value),
                                    child: Container(
                                      padding: sequenceAnimation["heighttoo"].value,
                                      width: 70,
                                      height: sequenceAnimation['height1'].value,
                                      child: Image.network(
                                        'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                        width: 70,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                ) :
                                check7 == true && givecheck2 == true ?
                                Padding(
                                  padding: sequenceAnimation["heightdown"].value,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: sequenceAnimation["left1"].value),
                                    child: Container(
                                      padding: sequenceAnimation["heighttoo"].value,
                                      width: 70,
                                      height: sequenceAnimation['height1'].value,
                                      child: Image.network(
                                        'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                        width: 70,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                ) :
                                check7 == true && givecheck3 == true ?
                                Padding(
                                  padding: const EdgeInsets.only(left: 174),
                                  child: Container(
                                    padding: sequenceAnimation["uptop"].value,
                                    width: 70,
                                    height: sequenceAnimation['height3'].value,
                                    child: Image.network(
                                      'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                      width: 70,
                                      height: 50,
                                    ),
                                  ),
                                ) :
                                check9 == true && givecheck2 == true ?
                                Padding(
                                  padding: sequenceAnimation["heightdown"].value,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: sequenceAnimation["left3"].value),
                                    child: Container(
                                      padding: sequenceAnimation["heighttoo"].value,
                                      width: 70,
                                      height: sequenceAnimation['height1'].value,
                                      child: Image.network(
                                        'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                        width: 70,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                ) :
                                check9 == true && givecheck4 == true ?
                                Padding(
                                  padding: const EdgeInsets.only(left: 324),
                                  child: Padding(
                                    padding: sequenceAnimation["bottom1"].value,
                                    child: Container(
                                      padding: sequenceAnimation["heighttoo"].value,
                                      width: 70,
                                      height: sequenceAnimation['height'].value,
                                      child: Image.network(
                                        'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                        width: 70,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                ) :
                                check9 == true && givecheck3 == true ?
                                Padding(
                                  padding: const EdgeInsets.only(left: 324),
                                  child: Container(
                                    padding: sequenceAnimation["uptop"].value,
                                    width: 70,
                                    height: sequenceAnimation['height3'].value,
                                    child: Image.network(
                                      'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                      width: 70,
                                      height: 50,
                                    ),
                                  ),
                                ) :
                                check10 == true && givecheck2 == true ?
                                Padding(
                                  padding: sequenceAnimation["heightdown"].value,
                                  child: Padding(
                                    padding: sequenceAnimation["left"].value,
                                    child: Container(
                                      padding: sequenceAnimation["heighttoo"].value,
                                      width: 70,
                                      height: sequenceAnimation['height3'].value,
                                      child: Image.network(
                                        'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                        width: 70,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                ) :
                                check10 == true && givecheck1 == true ?
                                Padding(
                                  padding: sequenceAnimation["heightdown"].value,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: sequenceAnimation["right"].value),
                                    child: Container(
                                      padding: sequenceAnimation["heighttoo"].value,
                                      width: 70,
                                      height: sequenceAnimation['height3'].value,
                                      child: Image.network(
                                        'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                        width: 70,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                ) :
                                check10 == true && givecheck4 == true ?
                                Padding(
                                  padding: const EdgeInsets.only(left: 25),
                                  child: Padding(
                                    padding: sequenceAnimation["bottom1"].value,
                                    child: Container(
                                      padding: sequenceAnimation["heighttoo"].value,
                                      width: 70,
                                      height: sequenceAnimation['gotobottom'].value,
                                      child: Image.network(
                                        'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                        width: 70,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                ) :
                                check10 == true && givecheck3 == true ?
                                Padding(
                                  padding: const EdgeInsets.only(left: 25),
                                  child: Container(
                                    padding: sequenceAnimation["uptop"].value,
                                    width: 70,
                                    height: sequenceAnimation['height5'].value,
                                    child: Image.network(
                                      'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                      width: 70,
                                      height: 50,
                                    ),
                                  ),
                                ) :
                                check11 == true && givecheck4 == true ?
                                Padding(
                                  padding: const EdgeInsets.only(left: 174),
                                  child: Padding(
                                    padding: sequenceAnimation["bottom1"].value,
                                    child: Container(
                                      padding: sequenceAnimation["heighttoo"].value,
                                      width: 70,
                                      height: sequenceAnimation['gotobottom'].value,
                                      child: Image.network(
                                        'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                        width: 70,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                ) :
                                check11 == true && givecheck1 == true ?
                                Padding(
                                  padding: sequenceAnimation["heightdown"].value,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: sequenceAnimation["right2"].value),
                                    child: Container(
                                      padding: sequenceAnimation["heighttoo"].value,
                                      width: 70,
                                      height: sequenceAnimation['height3'].value,
                                      child: Image.network(
                                        'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                        width: 70,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                ) :
                                check11 == true && givecheck2 == true ?
                                Padding(
                                  padding: sequenceAnimation["heightdown"].value,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: sequenceAnimation["left1"].value),
                                    child: Container(
                                      padding: sequenceAnimation["heighttoo"].value,
                                      width: 70,
                                      height: sequenceAnimation['height3'].value,
                                      child: Image.network(
                                        'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                        width: 70,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                ) :
                                check11 == true && givecheck3 == true ?
                                Padding(
                                  padding: const EdgeInsets.only(left: 174),
                                  child: Container(
                                    padding: sequenceAnimation["uptop"].value,
                                    width: 70,
                                    height: sequenceAnimation['height5'].value,
                                    child: Image.network(
                                      'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                      width: 70,
                                      height: 50,
                                    ),
                                  ),
                                ) :
                                check13 == true && givecheck2 == true ?
                                Padding(
                                  padding: sequenceAnimation["heightdown"].value,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: sequenceAnimation["left3"].value),
                                    child: Container(
                                      padding: sequenceAnimation["heighttoo"].value,
                                      width: 70,
                                      height: sequenceAnimation['height3'].value,
                                      child: Image.network(
                                        'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                        width: 70,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                ) :
                                check13 == true && givecheck4 == true ?
                                Padding(
                                  padding: const EdgeInsets.only(left: 324),
                                  child: Padding(
                                    padding: sequenceAnimation["bottom1"].value,
                                    child: Container(
                                      padding: sequenceAnimation["heighttoo"].value,
                                      width: 70,
                                      height: sequenceAnimation['gotobottom'].value,
                                      child: Image.network(
                                        'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                        width: 70,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                ) :
                                check13 == true && givecheck3 == true ?
                                Padding(
                                  padding: const EdgeInsets.only(left: 324),
                                  child: Container(
                                    padding: sequenceAnimation["uptop"].value,
                                    width: 70,
                                    height: sequenceAnimation['height5'].value,
                                    child: Image.network(
                                      'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                      width: 70,
                                      height: 50,
                                    ),
                                  ),
                                ) :
                                Container(
                                  width: 50,
                                  height: 50,
                                ),
                                'assets/rollingball2/3.png' == number[0] && gotostart == true && set2 != true ?
                                Padding(
                                    padding: EdgeInsets.only(top: ball1),
                                    child: Container(
                                      padding: EdgeInsets.only(left: ballleft1),
                                      child: Image.asset(
                                          'assets/ball.png'
                                      ),
                                    )
                                ) :
                                'assets/rollingball2/3.png' == number[1] && gotostart == true && set2 != true ?
                                Padding(
                                    padding: EdgeInsets.only(top: ball1),
                                    child: Container(
                                      padding: EdgeInsets.only(left: ballleft2),
                                      child: Image.asset(
                                          'assets/ball.png'
                                      ),
                                    )
                                ) :
                                'assets/rollingball2/3.png' == number[2] && gotostart == true && set2 != true ?
                                Padding(
                                    padding: EdgeInsets.only(top: ball1),
                                    child: Container(
                                      padding: EdgeInsets.only(left: ballleft3),
                                      child: Image.asset(
                                          'assets/ball.png'
                                      ),
                                    )
                                ) :
                                'assets/rollingball2/3.png' == number[3] && gotostart == true && set2 != true ?
                                Padding(
                                    padding: EdgeInsets.only(top: ball2),
                                    child: Container(
                                      padding: EdgeInsets.only(left: ballleft1),
                                      child: Image.asset(
                                          'assets/ball.png'
                                      ),
                                    )
                                ) :
                                'assets/rollingball2/3.png' == number[4] && gotostart == true && set2 != true ?
                                Padding(
                                    padding: EdgeInsets.only(top: ball2),
                                    child: Container(
                                      padding: EdgeInsets.only(left: ballleft2),
                                      child: Image.asset(
                                          'assets/ball.png'
                                      ),
                                    )
                                ) :
                                'assets/rollingball2/3.png' == number[5] && gotostart == true && set2 != true ?
                                Padding(
                                    padding: EdgeInsets.only(top: ball2),
                                    child: Container(
                                      padding: EdgeInsets.only(left: ballleft3),
                                      child: Image.asset(
                                          'assets/ball.png'
                                      ),
                                    )
                                ) :
                                'assets/rollingball2/3.png' == number[6] && gotostart == true && set2 != true ?
                                Padding(
                                    padding: EdgeInsets.only(top: ball3),
                                    child: Container(
                                      padding: EdgeInsets.only(left: ballleft1),
                                      child: Image.asset(
                                          'assets/ball.png'
                                      ),
                                    )
                                ) :
                                'assets/rollingball2/3.png' == number[7] && gotostart == true && set2 != true ?
                                Padding(
                                    padding: EdgeInsets.only(top: ball3),
                                    child: Container(
                                      padding: EdgeInsets.only(left: ballleft2),
                                      child: Image.asset(
                                          'assets/ball.png'
                                      ),
                                    )
                                ) :
                                'assets/rollingball2/3.png' == number[8] && gotostart == true && set2 != true ?
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
                                'assets/rollingball2/6.png' == number[0] && gotostart == true ?
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
                                'assets/rollingball2/6.png' == number[1] && gotostart == true ?
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
                                'assets/rollingball2/6.png' == number[2] && gotostart == true ?
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
                                'assets/rollingball2/6.png' == number[3] && gotostart == true ?
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
                                'assets/rollingball2/6.png' == number[4] && gotostart == true ?
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
                                'assets/rollingball2/6.png' == number[5] && gotostart == true ?
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
                                'assets/rollingball2/6.png' == number[6] && gotostart == true ?
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
                                'assets/rollingball2/6.png' == number[7] && gotostart == true ?
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
                                'assets/rollingball2/6.png' == number[8] && gotostart == true ?
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
                                'assets/rollingball2/4.png' == number[0] && gotostart == true ?
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
                                'assets/rollingball2/4.png' == number[1] && gotostart == true ?
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
                                'assets/rollingball2/4.png' == number[2] && gotostart == true ?
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
                                'assets/rollingball2/4.png' == number[3] && gotostart == true ?
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
                                'assets/rollingball2/4.png' == number[4] && gotostart == true ?
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
                                'assets/rollingball2/4.png' == number[5] && gotostart == true ?
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
                                'assets/rollingball2/4.png' == number[6] && gotostart == true ?
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
                                'assets/rollingball2/4.png' == number[7] && gotostart == true ?
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
                                'assets/rollingball2/4.png' == number[8] && gotostart == true ?
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
                                'assets/rollingball2/3.png' == number[0] && gotostart == true ?
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
                                'assets/rollingball2/3.png' == number[1] && gotostart == true ?
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
                                'assets/rollingball2/3.png' == number[2] && gotostart == true ?
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
                                'assets/rollingball2/3.png' == number[3] && gotostart == true ?
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
                                'assets/rollingball2/3.png' == number[4] && gotostart == true ?
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
                                'assets/rollingball2/3.png' == number[5] && gotostart == true ?
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
                                'assets/rollingball2/3.png' == number[6] && gotostart == true ?
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
                                'assets/rollingball2/3.png' == number[7] && gotostart == true ?
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
                                'assets/rollingball2/3.png' == number[8] && gotostart == true ?
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
                                'assets/rollingball2/1.png' == number[0] && gotostart == true ?
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
                                'assets/rollingball2/1.png' == number[1] && gotostart == true ?
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
                                'assets/rollingball2/1.png' == number[2] && gotostart == true ?
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
                                'assets/rollingball2/1.png' == number[3] && gotostart == true ?
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
                                'assets/rollingball2/1.png' == number[4] && gotostart == true ?
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
                                'assets/rollingball2/1.png' == number[5] && gotostart == true ?
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
                                'assets/rollingball2/1.png' == number[6] && gotostart == true ?
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
                                'assets/rollingball2/1.png' == number[7] && gotostart == true ?
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
                                'assets/rollingball2/1.png' == number[8] && gotostart == true ?
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
                                'assets/rollingball2/Untitled.png' == number[0] && gotostart == true ?
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
                                'assets/rollingball2/Untitled.png' == number[1] && gotostart == true ?
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
                                'assets/rollingball2/Untitled.png' == number[2] && gotostart == true ?
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
                                'assets/rollingball2/Untitled.png' == number[3] && gotostart == true ?
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
                                'assets/rollingball2/Untitled.png' == number[4] && gotostart == true ?
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
                                'assets/rollingball2/Untitled.png' == number[5] && gotostart == true ?
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
                                'assets/rollingball2/Untitled.png' == number[6] && gotostart == true ?
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
                                'assets/rollingball2/Untitled.png' == number[7] && gotostart == true ?
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
                                'assets/rollingball2/Untitled.png' == number[8] && gotostart == true ?
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
                                'assets/rollingball2/2.png' == number[0] && gotostart == true ?
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
                                'assets/rollingball2/2.png' == number[1] && gotostart == true ?
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
                                'assets/rollingball2/2.png' == number[2] && gotostart == true ?
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
                                'assets/rollingball2/2.png' == number[3] && gotostart == true ?
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
                                'assets/rollingball2/2.png' == number[4] && gotostart == true ?
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
                                'assets/rollingball2/2.png' == number[5] && gotostart == true ?
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
                                'assets/rollingball2/2.png' == number[6] && gotostart == true ?
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
                                'assets/rollingball2/2.png' == number[7] && gotostart == true ?
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
                                'assets/rollingball2/2.png' == number[8] && gotostart == true ?
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
                                'assets/rollingball2/7.png' == number[0] && gotostart == true ?
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
                                'assets/rollingball2/7.png' == number[1] && gotostart == true ?
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
                                'assets/rollingball2/7.png' == number[2] && gotostart == true ?
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
                                'assets/rollingball2/7.png' == number[3] && gotostart == true ?
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
                                'assets/rollingball2/7.png' == number[4] && gotostart == true ?
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
                                'assets/rollingball2/7.png' == number[5] && gotostart == true ?
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
                                'assets/rollingball2/7.png' == number[6] && gotostart == true ?
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
                                'assets/rollingball2/7.png' == number[7] && gotostart == true ?
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
                                'assets/rollingball2/7.png' == number[8] && gotostart == true ?
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
                                'assets/rollingball2/5.png' == number[0] && gotostart == true ?
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
                                'assets/rollingball2/5.png' == number[1] && gotostart == true ?
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
                                'assets/rollingball2/5.png' == number[2] && gotostart == true ?
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
                                'assets/rollingball2/5.png' == number[3] && gotostart == true ?
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
                                'assets/rollingball2/5.png' == number[4] && gotostart == true ?
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
                                'assets/rollingball2/5.png' == number[5] && gotostart == true ?
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
                                'assets/rollingball2/5.png' == number[6] && gotostart == true ?
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
                                'assets/rollingball2/5.png' == number[7] && gotostart == true ?
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
                                'assets/rollingball2/5.png' == number[8] && gotostart == true ?
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
                                        'assets/rollingball2/3.png' == number[2] &&
                                        'assets/rollingball2/Untitled.png' == number[4] &&
                                        'assets/rollingball2/2.png' == number[5] &&
                                        'assets/rollingball2/7.png' == number[6] &&
                                        'assets/rollingball2/5.png' == number[7] ?
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: ballgoingAnimation['ballbottom1'].value,
                                        left: ballgoingAnimation['ballleft1'].value,
                                      ),
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                            top: ballgoingAnimation['ballbottom2'].value,
                                            left: ballgoingAnimation['ballleft2'].value
                                          ),
                                          child: Container(
                                                  child: Image.asset(
                                                      'assets/ball.png'
                                                  ),
                                                ),
                                      ),
                                    ) :
                                    Container();
                                  },
                                ),
                              ],
                            );
                          },
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
                                  padding: const EdgeInsets.only(left: 50),
                                  child: Text(
                                    'Move: $move',
                                    style: const TextStyle(
                                        fontSize: 25,
                                        color: Colors.yellow
                                    ),
                                  ),
                                )
                            ),
                          ],
                        ),
                      ],
                    )
                  ]
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
                'Mark' : 'assets/rollingball2/3.png' == number[2] &&
                    'assets/rollingball2/Untitled.png' == number[4] &&
                    'assets/rollingball2/2.png' == number[5] &&
                    'assets/rollingball2/7.png' == number[6] &&
                    'assets/rollingball2/5.png' == number[7] ?
                '1/1' :
                '0/1',
              });

              ref.add({
                'name' : widget.name,
                'email' : widget.email,
                'pic' : widget.pic,
                'Move' : move.toString(),
                'Mark' : 'assets/rollingball2/3.png' == number[2] &&
                    'assets/rollingball2/Untitled.png' == number[4] &&
                    'assets/rollingball2/2.png' == number[5] &&
                    'assets/rollingball2/7.png' == number[6] &&
                    'assets/rollingball2/5.png' == number[7] ?
                '1/1' :
                '0/1',
              }).whenComplete(() async {
                await Future.delayed(
                    Duration(
                        seconds: 'assets/rollingball2/3.png' == number[2] &&
                            'assets/rollingball2/Untitled.png' == number[4] &&
                            'assets/rollingball2/2.png' == number[5] &&
                            'assets/rollingball2/7.png' == number[6] &&
                            'assets/rollingball2/5.png' == number[7] ?
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
                                              'assets/rollingball2/3.png' == number[2] &&
                                                  'assets/rollingball2/Untitled.png' == number[4] &&
                                                  'assets/rollingball2/2.png' == number[5] &&
                                                  'assets/rollingball2/7.png' == number[6] &&
                                                  'assets/rollingball2/5.png' == number[7] ?
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
                                        children: const [
                                          Text(
                                            'Time: No',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 17
                                            ),
                                          ),
                                          Text(
                                            '(Since this is an Animated Slide Puzzle, time is not counted)',
                                            style: TextStyle(
                                                color: Colors.red,
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
        )
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



