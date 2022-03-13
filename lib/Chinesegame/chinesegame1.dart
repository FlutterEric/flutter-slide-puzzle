import 'dart:async';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sequence_animation/flutter_sequence_animation.dart';
import 'package:lottie/lottie.dart';
import 'package:simple_animations/simple_animations.dart';


// ignore: camel_case_types, must_be_immutable
class chinesegame1page extends StatefulWidget {

  String name;
  String pic;
  String email;

  chinesegame1page({
    Key? key,
    required this.name,
    required this.pic,
    required this.email,
  }) : super(key: key);

  @override
  _chinesegame1pageState createState() => _chinesegame1pageState();
}
enum AniProps { x, y }

// ignore: camel_case_types
class _chinesegame1pageState extends State<chinesegame1page> with TickerProviderStateMixin {

  bool set2 = false;
  var number = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', 0];
  CollectionReference reference = FirebaseFirestore.instance.collection('Animation Slide Puzzle(1)');

  bool givecheck1 = false;
  bool givecheck2 = false;
  bool givecheck3 = false;
  bool givecheck4 = false;
  bool check1 = false;
  bool check2 = false;
  bool check3 = false;
  bool check4 = false;
  bool check5 = false;
  bool check6 = false;
  bool check7 = false;
  bool check8 = false;
  bool check9 = false;
  bool check10 = false;
  bool check11 = false;
  bool check12 = false;
  bool check13 = false;
  bool check14 = false;
  bool check15 = false;
  bool check16 = false;
  bool check17 = false;
  bool start = false;
  bool gotostart = false;
  bool isActive = false;
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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    number.shuffle();

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
            end: MediaQuery.of(context).size.height / 3 + 75
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
            end: MediaQuery.of(context).size.height / 3 + 225
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
            end: MediaQuery.of(context).size.height / 3 + 430
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
            end: MediaQuery.of(context).size.height / 4 + 350
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
            end: const EdgeInsets.only(bottom: 200)
        ),
        from: const Duration(seconds: 3),
        to: const Duration(seconds: 4),
        curve: Curves.ease,
        tag: "uptop"
    ).addAnimatable(
        animatable: Tween<EdgeInsets>(
            begin: const EdgeInsets.only(top: 0.0),
            end: const EdgeInsets.only(top: 100)
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
            end: MediaQuery.of(context).size.width / 4 + 12 //const EdgeInsets.only(left: 124)
        ),
        from: const Duration(seconds: 3),
        to: const Duration(seconds: 4),
        curve: Curves.ease,
        tag: "left1"
    ).addAnimatable(
        animatable: Tween<double>(
            begin: MediaQuery.of(context).size.width / 4 + 12,
            end: MediaQuery.of(context).size.width / 14 + 190
        ),
        from: const Duration(seconds: 3),
        to: const Duration(seconds: 4),
        curve: Curves.ease,
        tag: "left2"
    ).addAnimatable(
        animatable: Tween<double>(
            begin: MediaQuery.of(context).size.width / 14 + 190,
            end: MediaQuery.of(context).size.width / 14 + 300
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
            begin: MediaQuery.of(context).size.width / 4 + 12,
            end: MediaQuery.of(context).size.width / 11 - 10
        ),
        from: const Duration(seconds: 3),
        to: const Duration(seconds: 4),
        curve: Curves.ease,
        tag: "right"
    ).addAnimatable(
        animatable: Tween<double>(
            begin: MediaQuery.of(context).size.width / 14 + 190,
            end: MediaQuery.of(context).size.width / 4 + 12
        ),
        from: const Duration(seconds: 3),
        to: const Duration(seconds: 4),
        curve: Curves.ease,
        tag: "right1"
    ).addAnimatable(
        animatable: Tween<double>(
            begin: MediaQuery.of(context).size.width / 14 + 300,
            end: MediaQuery.of(context).size.width / 14 + 190
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

    CollectionReference ref = FirebaseFirestore.instance.collection(widget.name + ' Animation Slide Puzzle(1)');

    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: const Text(
          'Slide Puzzle (1)'
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
                                            crossAxisCount: 4,
                                          ),
                                          itemCount: number.length,
                                          itemBuilder: (context, index){
                                            final numbers = number[index];
                                            final number0 = number[0];
                                            final number1 = number[1];
                                            final number2 = number[2];
                                            final number3 = number[3];
                                            final number4 = number[4];
                                            final number5 = number[5];
                                            final number6 = number[6];
                                            final number7 = number[7];
                                            final number8 = number[8];
                                            final number9 = number[9];
                                            final number10 = number[10];
                                            final number11 = number[11];
                                            final number12 = number[12];
                                            final number13 = number[13];
                                            final number14 = number[14];
                                            final number15 = number[15];

                                            return number[index] != 0 ?
                                            Stack(
                                                children: [
                                                  InkWell(
                                                      onTap: () async {
                                                        if(secondsPassed == 0){
                                                          start = true;
                                                        }
                                                        if(gotostart == true && set2 != true){
                                                          if(index - 1 >= 0 && number[index - 1] == 0 && index % 4 != 0 || //left
                                                              index + 1 < 16 && number[index + 1] == 0 && (index + 1) % 4 != 0 || // right
                                                              (index - 4 >= 0 && number[index - 4] == 0) || // Up
                                                              (index + 4 < 16 && number[index + 4] == 0) // down
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

                                                              index - 1 >= 0 && number[index - 1] == 0 && index % 4 != 0 ?//left
                                                              givecheck1 = true :
                                                              givecheck1 = false;

                                                              index + 1 < 16 && number[index + 1] == 0 && (index + 1) % 4 != 0 ?// right
                                                              givecheck2 = true :
                                                              givecheck2 = false;

                                                              (index - 4 >= 0 && number[index - 4] == 0) ?// Up
                                                              givecheck3 = true :
                                                              givecheck3 = false;

                                                              (index + 4 < 16 && number[index + 4] == 0) ? // down
                                                              givecheck4 = true :
                                                              givecheck4 = false;

                                                              number[0] == 0 ?
                                                              check2 = true :
                                                              check2 = false;

                                                              number[1] == 0 ?
                                                              check3 = true :
                                                              check3 = false;

                                                              number[2] == 0 ?
                                                              check4 = true :
                                                              check4 = false;

                                                              number[3] == 0 ?
                                                              check5 = true :
                                                              check5 = false;

                                                              number[4] == 0 ?
                                                              check6 = true :
                                                              check6 = false;

                                                              number[5] == 0 ?
                                                              check7 = true :
                                                              check7 = false;

                                                              number[6] == 0 ?
                                                              check8 = true :
                                                              check8 = false;

                                                              number[7] == 0 ?
                                                              check9 = true :
                                                              check9 = false;

                                                              number[8] == 0 ?
                                                              check10 = true :
                                                              check10 = false;

                                                              number[9] == 0 ?
                                                              check11 = true :
                                                              check11 = false;

                                                              number[10] == 0 ?
                                                              check12 = true :
                                                              check12 = false;

                                                              number[11] == 0 ?
                                                              check13 = true :
                                                              check13 = false;

                                                              number[12] == 0 ?
                                                              check14 = true :
                                                              check14 = false;

                                                              number[13] == 0 ?
                                                              check15 = true :
                                                              check15 = false;

                                                              number[14] == 0 ?
                                                              check16 = true :
                                                              check16 = false;

                                                              number[15] == 0 ?
                                                              check17 = true :
                                                              check17 = false;
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
                                                      set2 == true ?
                                                      Transform(
                                                          transform: Matrix4.identity()
                                                            ..setEntry(3, 2, 0.002)
                                                            ..rotateY(pi * animation.value),
                                                          child: set2 != true ?
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
                                                                  ),
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
                                                                ),
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
                                                            ),
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
                                                            ),
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
                                                                    ),
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
                                                                    ),
                                                                  )
                                                              );
                                                            },
                                                          ) :
                                                          check4 == true && givecheck3 == true ?
                                                          AnimatedBuilder(
                                                            animation: animationController2,
                                                            builder: (context, child){
                                                              return Transform.translate(
                                                                offset: widgetAnimation["widgetup1"].value,
                                                                child: Container(
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
                                                                ),
                                                              );
                                                            },
                                                          ) :
                                                          check4 == true && givecheck1 == true ?
                                                          AnimatedBuilder(
                                                            animation: animationController2,
                                                            builder: (context, child){
                                                              return Transform.translate(
                                                                  offset: widgetAnimation["posbottom"].value,
                                                                  child: Transform.translate(
                                                                    offset: widgetAnimation["widgetright2"].value,
                                                                    child: Container(
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
                                                                    ),
                                                                  )
                                                              );
                                                            },
                                                          ) :
                                                          check4 == true && givecheck2 == true ?
                                                          AnimatedBuilder(
                                                            animation: animationController2,
                                                            builder: (context, child){
                                                              return Transform.translate(
                                                                  offset: widgetAnimation["posbottom"].value,
                                                                  child: Transform.translate(
                                                                    offset: widgetAnimation["widgetleft1"].value,
                                                                    child: Container(
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
                                                                    ),
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
                                                                ),
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
                                                                    ),
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
                                                                    ),
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
                                                                ),
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
                                                                    ),
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
                                                                    ),
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
                                                                    ),
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
                                                                ),
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
                                                                    ),
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
                                                                    ),
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
                                                                    ),
                                                                  )
                                                              );
                                                            },
                                                          ) :
                                                          check8 == true && givecheck3 == true ?
                                                          AnimatedBuilder(
                                                            animation: animationController2,
                                                            builder: (context, child){
                                                              return Transform.translate(
                                                                offset: widgetAnimation["widgetup1"].value,
                                                                child: Container(
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
                                                                ),
                                                              );
                                                            },
                                                          ) :
                                                          check8 == true && givecheck1 == true ?
                                                          AnimatedBuilder(
                                                            animation: animationController2,
                                                            builder: (context, child){
                                                              return Transform.translate(
                                                                  offset: widgetAnimation["posbottom"].value,
                                                                  child: Transform.translate(
                                                                    offset: widgetAnimation["widgetright2"].value,
                                                                    child: Container(
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
                                                                    ),
                                                                  )
                                                              );
                                                            },
                                                          ) :
                                                          check8 == true && givecheck2 == true ?
                                                          AnimatedBuilder(
                                                            animation: animationController2,
                                                            builder: (context, child){
                                                              return Transform.translate(
                                                                  offset: widgetAnimation["posbottom"].value,
                                                                  child: Transform.translate(
                                                                    offset: widgetAnimation["widgetleft1"].value,
                                                                    child: Container(
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
                                                                    ),
                                                                  )
                                                              );
                                                            },
                                                          ) :
                                                          check8 == true && givecheck4 == true ?
                                                          AnimatedBuilder(
                                                            animation: animationController2,
                                                            builder: (context, child){
                                                              return Transform.translate(
                                                                  offset: widgetAnimation["posbottom"].value,
                                                                  child: Transform.translate(
                                                                    offset: widgetAnimation["widgetdown1"].value,
                                                                    child: Container(
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
                                                                    ),
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
                                                                ),
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
                                                                    ),
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
                                                                    ),
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
                                                                    ),
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
                                                                ),
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
                                                                    ),
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
                                                                    ),
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
                                                                    ),
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
                                                                ),
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
                                                                    ),
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
                                                                    ),
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
                                                                    ),
                                                                  )
                                                              );
                                                            },
                                                          ) :
                                                          check12 == true && givecheck3 == true ?
                                                          AnimatedBuilder(
                                                            animation: animationController2,
                                                            builder: (context, child){
                                                              return Transform.translate(
                                                                offset: widgetAnimation["widgetup1"].value,
                                                                child: Container(
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
                                                                ),
                                                              );
                                                            },
                                                          ) :
                                                          check12 == true && givecheck1 == true ?
                                                          AnimatedBuilder(
                                                            animation: animationController2,
                                                            builder: (context, child){
                                                              return Transform.translate(
                                                                  offset: widgetAnimation["posbottom"].value,
                                                                  child: Transform.translate(
                                                                    offset: widgetAnimation["widgetright2"].value,
                                                                    child: Container(
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
                                                                    ),
                                                                  )
                                                              );
                                                            },
                                                          ) :
                                                          check12 == true && givecheck2 == true ?
                                                          AnimatedBuilder(
                                                            animation: animationController2,
                                                            builder: (context, child){
                                                              return Transform.translate(
                                                                  offset: widgetAnimation["posbottom"].value,
                                                                  child: Transform.translate(
                                                                    offset: widgetAnimation["widgetleft1"].value,
                                                                    child: Container(
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
                                                                    ),
                                                                  )
                                                              );
                                                            },
                                                          ) :
                                                          check12 == true && givecheck4 == true ?
                                                          AnimatedBuilder(
                                                            animation: animationController2,
                                                            builder: (context, child){
                                                              return Transform.translate(
                                                                  offset: widgetAnimation["posbottom"].value,
                                                                  child: Transform.translate(
                                                                    offset: widgetAnimation["widgetdown1"].value,
                                                                    child: Container(
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
                                                                    ),
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
                                                                ),
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
                                                                    ),
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
                                                                    ),
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
                                                                    ),
                                                                  )
                                                              );
                                                            },
                                                          ) :
                                                          check14 == true && givecheck3 == true ?
                                                          AnimatedBuilder(
                                                            animation: animationController2,
                                                            builder: (context, child){
                                                              return Transform.translate(
                                                                offset: widgetAnimation["widgetup1"].value,
                                                                child: Container(
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
                                                                ),
                                                              );
                                                            },
                                                          ) :
                                                          check14 == true && givecheck1 == true ?
                                                          AnimatedBuilder(
                                                            animation: animationController2,
                                                            builder: (context, child){
                                                              return Transform.translate(
                                                                  offset: widgetAnimation["posbottom"].value,
                                                                  child: Transform.translate(
                                                                    offset: widgetAnimation["widgetright2"].value,
                                                                    child: Container(
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
                                                                    ),
                                                                  )
                                                              );
                                                            },
                                                          ) :
                                                          check14 == true && givecheck2 == true ?
                                                          AnimatedBuilder(
                                                            animation: animationController2,
                                                            builder: (context, child){
                                                              return Transform.translate(
                                                                  offset: widgetAnimation["posbottom"].value,
                                                                  child: Transform.translate(
                                                                    offset: widgetAnimation["widgetleft1"].value,
                                                                    child: Container(
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
                                                                    ),
                                                                  )
                                                              );
                                                            },
                                                          ) :
                                                          check14 == true && givecheck4 == true ?
                                                          AnimatedBuilder(
                                                            animation: animationController2,
                                                            builder: (context, child){
                                                              return Transform.translate(
                                                                  offset: widgetAnimation["posbottom"].value,
                                                                  child: Transform.translate(
                                                                    offset: widgetAnimation["widgetdown1"].value,
                                                                    child: Container(
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
                                                                    ),
                                                                  )
                                                              );
                                                            },
                                                          ) :
                                                          check15 == true && givecheck3 == true ?
                                                          AnimatedBuilder(
                                                            animation: animationController2,
                                                            builder: (context, child){
                                                              return Transform.translate(
                                                                offset: widgetAnimation["widgetup1"].value,
                                                                child: Container(
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
                                                                ),
                                                              );
                                                            },
                                                          ) :
                                                          check15 == true && givecheck1 == true ?
                                                          AnimatedBuilder(
                                                            animation: animationController2,
                                                            builder: (context, child){
                                                              return Transform.translate(
                                                                  offset: widgetAnimation["posbottom"].value,
                                                                  child: Transform.translate(
                                                                    offset: widgetAnimation["widgetright2"].value,
                                                                    child: Container(
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
                                                                    ),
                                                                  )
                                                              );
                                                            },
                                                          ) :
                                                          check15 == true && givecheck2 == true ?
                                                          AnimatedBuilder(
                                                            animation: animationController2,
                                                            builder: (context, child){
                                                              return Transform.translate(
                                                                  offset: widgetAnimation["posbottom"].value,
                                                                  child: Transform.translate(
                                                                    offset: widgetAnimation["widgetleft1"].value,
                                                                    child: Container(
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
                                                                    ),
                                                                  )
                                                              );
                                                            },
                                                          ) :
                                                          check15 == true && givecheck4 == true ?
                                                          AnimatedBuilder(
                                                            animation: animationController2,
                                                            builder: (context, child){
                                                              return Transform.translate(
                                                                  offset: widgetAnimation["posbottom"].value,
                                                                  child: Transform.translate(
                                                                    offset: widgetAnimation["widgetdown1"].value,
                                                                    child: Container(
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
                                                                    ),
                                                                  )
                                                              );
                                                            },
                                                          ) :
                                                          check16 == true && givecheck3 == true ?
                                                          AnimatedBuilder(
                                                            animation: animationController2,
                                                            builder: (context, child){
                                                              return Transform.translate(
                                                                offset: widgetAnimation["widgetup1"].value,
                                                                child: Container(
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
                                                                ),
                                                              );
                                                            },
                                                          ) :
                                                          check16 == true && givecheck1 == true ?
                                                          AnimatedBuilder(
                                                            animation: animationController2,
                                                            builder: (context, child){
                                                              return Transform.translate(
                                                                  offset: widgetAnimation["posbottom"].value,
                                                                  child: Transform.translate(
                                                                    offset: widgetAnimation["widgetright2"].value,
                                                                    child: Container(
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
                                                                    ),
                                                                  )
                                                              );
                                                            },
                                                          ) :
                                                          check16 == true && givecheck2 == true ?
                                                          AnimatedBuilder(
                                                            animation: animationController2,
                                                            builder: (context, child){
                                                              return Transform.translate(
                                                                  offset: widgetAnimation["posbottom"].value,
                                                                  child: Transform.translate(
                                                                    offset: widgetAnimation["widgetleft1"].value,
                                                                    child: Container(
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
                                                                    ),
                                                                  )
                                                              );
                                                            },
                                                          ) :
                                                          check16 == true && givecheck4 == true ?
                                                          AnimatedBuilder(
                                                            animation: animationController2,
                                                            builder: (context, child){
                                                              return Transform.translate(
                                                                  offset: widgetAnimation["posbottom"].value,
                                                                  child: Transform.translate(
                                                                    offset: widgetAnimation["widgetdown1"].value,
                                                                    child: Container(
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
                                                                    ),
                                                                  )
                                                              );
                                                            },
                                                          ) :
                                                          check17 == true && givecheck3 == true ?
                                                          AnimatedBuilder(
                                                            animation: animationController2,
                                                            builder: (context, child){
                                                              return Transform.translate(
                                                                offset: widgetAnimation["widgetup1"].value,
                                                                child: Container(
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
                                                                ),
                                                              );
                                                            },
                                                          ) :
                                                          check17 == true && givecheck1 == true ?
                                                          AnimatedBuilder(
                                                            animation: animationController2,
                                                            builder: (context, child){
                                                              return Transform.translate(
                                                                  offset: widgetAnimation["posbottom"].value,
                                                                  child: Transform.translate(
                                                                    offset: widgetAnimation["widgetright2"].value,
                                                                    child: Container(
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
                                                                    ),
                                                                  )
                                                              );
                                                            },
                                                          ) :
                                                          check17 == true && givecheck2 == true ?
                                                          AnimatedBuilder(
                                                            animation: animationController2,
                                                            builder: (context, child){
                                                              return Transform.translate(
                                                                  offset: widgetAnimation["posbottom"].value,
                                                                  child: Transform.translate(
                                                                    offset: widgetAnimation["widgetleft1"].value,
                                                                    child: Container(
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
                                                                    ),
                                                                  )
                                                              );
                                                            },
                                                          ) :
                                                          check17 == true && givecheck4 == true ?
                                                          AnimatedBuilder(
                                                            animation: animationController2,
                                                            builder: (context, child){
                                                              return Transform.translate(
                                                                  offset: widgetAnimation["posbottom"].value,
                                                                  child: Transform.translate(
                                                                    offset: widgetAnimation["widgetdown1"].value,
                                                                    child: Container(
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
                                                                    ),
                                                                  )
                                                              );
                                                            },
                                                          ) :
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
                                                          ),
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
                              padding: EdgeInsets.only(left: sequenceAnimation["right1"].value),
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
                            padding: const EdgeInsets.only(left: 124),
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
                          check4 == true && givecheck2 == true ?
                          Padding(
                            padding: sequenceAnimation["heightdown"].value,
                            child: Padding(
                              padding: EdgeInsets.only(left: sequenceAnimation["left2"].value),
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
                          check4 == true && givecheck1 == true ?
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
                          check4 == true && givecheck3 == true ?
                          Padding(
                            padding: const EdgeInsets.only(left: 224),
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
                            padding: const EdgeInsets.only(left: 124),
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
                              padding: EdgeInsets.only(left: sequenceAnimation["right1"].value),
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
                            padding: const EdgeInsets.only(left: 124),
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
                          check8 == true && givecheck2 == true ?
                          Padding(
                            padding: sequenceAnimation["heightdown"].value,
                            child: Padding(
                              padding: EdgeInsets.only(left: sequenceAnimation["left2"].value),
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
                          check8 == true && givecheck1 == true ?
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
                          check8 == true && givecheck3 == true ?
                          Padding(
                            padding: const EdgeInsets.only(left: 224),
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
                          check8 == true && givecheck4 == true ?
                          Padding(
                            padding: const EdgeInsets.only(left: 224),
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
                            padding: const EdgeInsets.only(left: 124),
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
                              padding: EdgeInsets.only(left: sequenceAnimation["right1"].value),
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
                            padding: const EdgeInsets.only(left: 124),
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
                          check12 == true && givecheck2 == true ?
                          Padding(
                            padding: sequenceAnimation["heightdown"].value,
                            child: Padding(
                              padding: EdgeInsets.only(left: sequenceAnimation["left2"].value),
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
                          check12 == true && givecheck1 == true ?
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
                          check12 == true && givecheck3 == true ?
                          Padding(
                            padding: const EdgeInsets.only(left: 224),
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
                          check12 == true && givecheck4 == true ?
                          Padding(
                            padding: const EdgeInsets.only(left: 224),
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
                          check14 == true && givecheck2 == true ?
                          Padding(
                            padding: sequenceAnimation["heightdown"].value,
                            child: Padding(
                              padding: sequenceAnimation["left"].value,
                              child: Container(
                                padding: sequenceAnimation["heighttoo"].value,
                                width: 70,
                                height: sequenceAnimation['height5'].value,
                                child: Image.network(
                                  'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                  width: 70,
                                  height: 50,
                                ),
                              ),
                            ),
                          ) :
                          check14 == true && givecheck1 == true ?
                          Padding(
                            padding: sequenceAnimation["heightdown"].value,
                            child: Padding(
                              padding: EdgeInsets.only(left: sequenceAnimation["right"].value),
                              child: Container(
                                padding: sequenceAnimation["heighttoo"].value,
                                width: 70,
                                height: sequenceAnimation['height5'].value,
                                child: Image.network(
                                  'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                  width: 70,
                                  height: 50,
                                ),
                              ),
                            ),
                          ) :
                          check14 == true && givecheck4 == true ?
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Padding(
                              padding: sequenceAnimation["bottom1"].value,
                              child: Container(
                                padding: sequenceAnimation["heighttoo"].value,
                                width: 70,
                                height: sequenceAnimation['gotobottom1'].value,
                                child: Image.network(
                                  'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                  width: 70,
                                  height: 50,
                                ),
                              ),
                            ),
                          ) :
                          check14 == true && givecheck3 == true ?
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Container(
                              padding: sequenceAnimation["uptop"].value,
                              width: 70,
                              height: sequenceAnimation['height6'].value,
                              child: Image.network(
                                'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                width: 70,
                                height: 50,
                              ),
                            ),
                          ) :
                          check15 == true && givecheck4 == true ?
                          Padding(
                            padding: const EdgeInsets.only(left: 124),
                            child: Padding(
                              padding: sequenceAnimation["bottom1"].value,
                              child: Container(
                                padding: sequenceAnimation["heighttoo"].value,
                                width: 70,
                                height: sequenceAnimation['gotobottom1'].value,
                                child: Image.network(
                                  'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                  width: 70,
                                  height: 50,
                                ),
                              ),
                            ),
                          ) :
                          check15 == true && givecheck1 == true ?
                          Padding(
                            padding: sequenceAnimation["heightdown"].value,
                            child: Padding(
                              padding: EdgeInsets.only(left: sequenceAnimation["right1"].value),
                              child: Container(
                                padding: sequenceAnimation["heighttoo"].value,
                                width: 70,
                                height: sequenceAnimation['height5'].value,
                                child: Image.network(
                                  'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                  width: 70,
                                  height: 50,
                                ),
                              ),
                            ),
                          ) :
                          check15 == true && givecheck2 == true ?
                          Padding(
                            padding: sequenceAnimation["heightdown"].value,
                            child: Padding(
                              padding: EdgeInsets.only(left: sequenceAnimation["left1"].value),
                              child: Container(
                                padding: sequenceAnimation["heighttoo"].value,
                                width: 70,
                                height: sequenceAnimation['height5'].value,
                                child: Image.network(
                                  'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                  width: 70,
                                  height: 50,
                                ),
                              ),
                            ),
                          ) :
                          check15 == true && givecheck3 == true ?
                          Padding(
                            padding: const EdgeInsets.only(left: 124),
                            child: Container(
                              padding: sequenceAnimation["uptop"].value,
                              width: 70,
                              height: sequenceAnimation['height6'].value,
                              child: Image.network(
                                'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                width: 70,
                                height: 50,
                              ),
                            ),
                          ) :
                          check16 == true && givecheck2 == true ?
                          Padding(
                            padding: sequenceAnimation["heightdown"].value,
                            child: Padding(
                              padding: EdgeInsets.only(left: sequenceAnimation["left2"].value),
                              child: Container(
                                padding: sequenceAnimation["heighttoo"].value,
                                width: 70,
                                height: sequenceAnimation['height5'].value,
                                child: Image.network(
                                  'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                  width: 70,
                                  height: 50,
                                ),
                              ),
                            ),
                          ) :
                          check16 == true && givecheck1 == true ?
                          Padding(
                            padding: sequenceAnimation["heightdown"].value,
                            child: Padding(
                              padding: EdgeInsets.only(left: sequenceAnimation["right2"].value),
                              child: Container(
                                padding: sequenceAnimation["heighttoo"].value,
                                width: 70,
                                height: sequenceAnimation['height5'].value,
                                child: Image.network(
                                  'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                  width: 70,
                                  height: 50,
                                ),
                              ),
                            ),
                          ) :
                          check16 == true && givecheck3 == true ?
                          Padding(
                            padding: const EdgeInsets.only(left: 224),
                            child: Container(
                              padding: sequenceAnimation["uptop"].value,
                              width: 70,
                              height: sequenceAnimation['height6'].value,
                              child: Image.network(
                                'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                width: 70,
                                height: 50,
                              ),
                            ),
                          ) :
                          check16 == true && givecheck4 == true ?
                          Padding(
                            padding: const EdgeInsets.only(left: 224),
                            child: Padding(
                              padding: sequenceAnimation["bottom1"].value,
                              child: Container(
                                padding: sequenceAnimation["heighttoo"].value,
                                width: 70,
                                height: sequenceAnimation['gotobottom1'].value,
                                child: Image.network(
                                  'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                  width: 70,
                                  height: 50,
                                ),
                              ),
                            ),
                          ) :
                          check17 == true && givecheck2 == true ?
                          Padding(
                            padding: sequenceAnimation["heightdown"].value,
                            child: Padding(
                              padding: EdgeInsets.only(left: sequenceAnimation["left3"].value),
                              child: Container(
                                padding: sequenceAnimation["heighttoo"].value,
                                width: 70,
                                height: sequenceAnimation['height5'].value,
                                child: Image.network(
                                  'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                  width: 70,
                                  height: 50,
                                ),
                              ),
                            ),
                          ) :
                          check17 == true && givecheck4 == true ?
                          Padding(
                            padding: const EdgeInsets.only(left: 324),
                            child: Padding(
                              padding: sequenceAnimation["bottom1"].value,
                              child: Container(
                                padding: sequenceAnimation["heighttoo"].value,
                                width: 70,
                                height: sequenceAnimation['gotobottom1'].value,
                                child: Image.network(
                                  'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                                  width: 70,
                                  height: 50,
                                ),
                              ),
                            ),
                          ) :
                          check17 == true && givecheck3 == true ?
                          Padding(
                            padding: const EdgeInsets.only(left: 324),
                            child: Container(
                              padding: sequenceAnimation["uptop"].value,
                              width: 70,
                              height: sequenceAnimation['height6'].value,
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
                  )
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

          reference.add({
            'who play name' : widget.name,
            'who play email' : widget.email,
            'who play pic' : widget.pic,
            'Move' : move.toString(),
            'Mark' : (number[0] == '1' &&
                number[1] == '2' &&
                number[2] == '3' &&
                number[3] == '4' &&
                number[4] == '5' &&
                number[5] == '6' &&
                number[6] == '7' &&
                number[7] == '8' &&
                number[8] == '9' &&
                number[9] == '10' &&
                number[10] == '11' &&
                number[11] == '12' &&
                number[12] == '13' &&
                number[13] == '14' &&
                number[14] == '15') ?
            '1/1' :
            '0/1',
          });

          ref.add({
            'name' : widget.name,
            'email' : widget.email,
            'pic' : widget.pic,
            'Move' : move.toString(),
            'Mark' : (number[0] == '1' &&
                number[1] == '2' &&
                number[2] == '3' &&
                number[3] == '4' &&
                number[4] == '5' &&
                number[5] == '6' &&
                number[6] == '7' &&
                number[7] == '8' &&
                number[8] == '9' &&
                number[9] == '10' &&
                number[10] == '11' &&
                number[11] == '12' &&
                number[12] == '13' &&
                number[13] == '14' &&
                number[14] == '15') ?
            '1/1' :
            '0/1',
          }).whenComplete(() async {
            await Future.delayed(
              const Duration(
                seconds: 3
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
                                        (number[0] == '1' &&
                                            number[1] == '2' &&
                                            number[2] == '3' &&
                                            number[3] == '4' &&
                                            number[4] == '5' &&
                                            number[5] == '6' &&
                                            number[6] == '7' &&
                                            number[7] == '8' &&
                                            number[8] == '9' &&
                                            number[9] == '10' &&
                                            number[10] == '11' &&
                                            number[11] == '12' &&
                                            number[12] == '13' &&
                                            number[13] == '14' &&
                                            number[14] == '15') ?
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
    );
  }

  void starttime() {
    if(start){
      setState(() {
        secondsPassed += 1;
      });
    }
  }
}

/*

Column(
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: numbers != 0 ?
                                            InkWell(
                                                onTap: () async {
                                                  if(set2 == false){
                                                    if(index - 1 >= 0 && number[index - 1] == 0 && index % 4 != 0 ||
                                                        index + 1 < 16 && number[index + 1] == 0 && (index + 1) % 4 != 0 ||
                                                        (index - 4 >= 0 && number[index - 4] == 0) ||
                                                        (index + 4 < 16 && number[index + 4] == 0)
                                                    ){
                                                      setState(() {
                                                        number[number.indexOf(0)] = number[index];
                                                        number[index] = 0;
                                                      });
                                                      check1 = true;
                                                      await animationController.forward().orCancel;
                                                      await animationController.reverse().orCancel;
                                                    }
                                                  } else {
                                                    return;
                                                  }
                                                },
                                                child: Container(
                                                  height: 75,
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
                                                )
                                            ) :
                                            Padding(
                                                padding: const EdgeInsets.only(top: 5, left: 5),
                                                child: Container(
                                                    height: 75,
                                                    decoration: const BoxDecoration(
                                                        color: Colors.blue,
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
                                            )
                                          ),
                                          Expanded(
                                            child: numbers1 != 0 ?
                                            InkWell(
                                                onTap: () async {
                                                  if(set2 == false){
                                                    if(index - 1 >= 0 && number[index - 1] == 0 && index % 4 != 0 ||
                                                        index + 1 < 16 && number[index + 1] == 0 && (index + 1) % 4 != 0 ||
                                                        (index - 4 >= 0 && number[index - 4] == 0) ||
                                                        (index + 4 < 16 && number[index + 4] == 0)
                                                    ){
                                                      setState(() {
                                                        number[number.indexOf(0)] = number[index];
                                                        number[index] = 0;
                                                      });
                                                      check1 = true;
                                                      await animationController.forward().orCancel;
                                                      await animationController.reverse().orCancel;
                                                    }
                                                  } else {
                                                    return;
                                                  }
                                                },
                                                child: Container(
                                                  height: 75,
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
                                                      '$numbers1',
                                                      style: const TextStyle(
                                                          fontSize: 20,
                                                          fontWeight: FontWeight.bold,
                                                          color: Colors.white
                                                      ),
                                                    ),
                                                  ),
                                                )
                                            ) :
                                            Padding(
                                                padding: const EdgeInsets.only(top: 5, left: 5),
                                                child: Container(
                                                    height: 75,
                                                    decoration: const BoxDecoration(
                                                        color: Colors.blue,
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
                                            )
                                          ),
                                          Expanded(
                                            child: numbers2 != 0 ?
                                            InkWell(
                                                onTap: () async {
                                                  if(set2 == false){
                                                    if(index - 1 >= 0 && number[index - 1] == 0 && index % 4 != 0 ||
                                                        index + 1 < 16 && number[index + 1] == 0 && (index + 1) % 4 != 0 ||
                                                        (index - 4 >= 0 && number[index - 4] == 0) ||
                                                        (index + 4 < 16 && number[index + 4] == 0)
                                                    ){
                                                      setState(() {
                                                        number[number.indexOf(0)] = number[index];
                                                        number[index] = 0;
                                                      });
                                                      check1 = true;
                                                      await animationController.forward().orCancel;
                                                      await animationController.reverse().orCancel;
                                                    }
                                                  } else {
                                                    return;
                                                  }
                                                },
                                                child: Container(
                                                  height: 75,
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
                                                      '$numbers2',
                                                      style: const TextStyle(
                                                          fontSize: 20,
                                                          fontWeight: FontWeight.bold,
                                                          color: Colors.white
                                                      ),
                                                    ),
                                                  ),
                                                )
                                            ) :
                                            Padding(
                                                padding: const EdgeInsets.only(top: 5, left: 5),
                                                child: Container(
                                                    height: 75,
                                                    decoration: const BoxDecoration(
                                                        color: Colors.blue,
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
                                            )
                                          ),
                                          Expanded(
                                            child: numbers3 != 0 ?
                                            InkWell(
                                                onTap: () async {
                                                  if(set2 == false){
                                                    if(index - 1 >= 0 && number[index - 1] == 0 && index % 4 != 0 ||
                                                        index + 1 < 16 && number[index + 1] == 0 && (index + 1) % 4 != 0 ||
                                                        (index - 4 >= 0 && number[index - 4] == 0) ||
                                                        (index + 4 < 16 && number[index + 4] == 0)
                                                    ){
                                                      setState(() {
                                                        number[number.indexOf(0)] = number[index];
                                                        number[index] = 0;
                                                      });
                                                      check1 = true;
                                                      await animationController.forward().orCancel;
                                                      await animationController.reverse().orCancel;
                                                    }
                                                  } else {
                                                    return;
                                                  }
                                                },
                                                child: Container(
                                                  height: 75,
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
                                                      '$numbers3',
                                                      style: const TextStyle(
                                                          fontSize: 20,
                                                          fontWeight: FontWeight.bold,
                                                          color: Colors.white
                                                      ),
                                                    ),
                                                  ),
                                                )
                                            ) :
                                            Padding(
                                                padding: const EdgeInsets.only(top: 5, left: 5),
                                                child: Container(
                                                    height: 75,
                                                    decoration: const BoxDecoration(
                                                        color: Colors.blue,
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
                                            )
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: numbers4 != 0 ?
                                              InkWell(
                                                  onTap: () async {
                                                    if(set2 == false){
                                                      if(index - 1 >= 0 && number[index - 1] == 0 && index % 4 != 0 ||
                                                          index + 1 < 16 && number[index + 1] == 0 && (index + 1) % 4 != 0 ||
                                                          (index - 4 >= 0 && number[index - 4] == 0) ||
                                                          (index + 4 < 16 && number[index + 4] == 0)
                                                      ){
                                                        setState(() {
                                                          number[number.indexOf(0)] = number[index];
                                                          number[index] = 0;
                                                        });
                                                        check1 = true;
                                                        await animationController.forward().orCancel;
                                                        await animationController.reverse().orCancel;
                                                      }
                                                    } else {
                                                      return;
                                                    }
                                                  },
                                                  child: Container(
                                                    height: 75,
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
                                                        '$numbers4',
                                                        style: const TextStyle(
                                                            fontSize: 20,
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.white
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                              ) :
                                              Padding(
                                                  padding: const EdgeInsets.only(top: 5, left: 5),
                                                  child: Container(
                                                      height: 75,
                                                      decoration: const BoxDecoration(
                                                          color: Colors.blue,
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
                                              )
                                            ),
                                            Expanded(
                                              child: numbers5 != 0?
                                              InkWell(
                                                  onTap: () async {
                                                    if(set2 == false){
                                                      if(index - 1 >= 0 && number[index - 1] == 0 && index % 4 != 0 ||
                                                          index + 1 < 16 && number[index + 1] == 0 && (index + 1) % 4 != 0 ||
                                                          (index - 4 >= 0 && number[index - 4] == 0) ||
                                                          (index + 4 < 16 && number[index + 4] == 0)
                                                      ){
                                                        setState(() {
                                                          number[number.indexOf(0)] = number[index];
                                                          number[index] = 0;
                                                        });
                                                        check1 = true;
                                                        await animationController.forward().orCancel;
                                                        await animationController.reverse().orCancel;
                                                      }
                                                    } else {
                                                      return;
                                                    }
                                                  },
                                                  child: Container(
                                                    height: 75,
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
                                                        '$numbers5',
                                                        style: const TextStyle(
                                                            fontSize: 20,
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.white
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                              ) :
                                              Padding(
                                                  padding: const EdgeInsets.only(top: 5, left: 5),
                                                  child: Container(
                                                      height: 75,
                                                      decoration: const BoxDecoration(
                                                          color: Colors.blue,
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
                                              )
                                            ),
                                            Expanded(
                                              child: numbers6 != 0 ?
                                              InkWell(
                                                  onTap: () async {
                                                    if(set2 == false){
                                                      if(index - 1 >= 0 && number[index - 1] == 0 && index % 4 != 0 ||
                                                          index + 1 < 16 && number[index + 1] == 0 && (index + 1) % 4 != 0 ||
                                                          (index - 4 >= 0 && number[index - 4] == 0) ||
                                                          (index + 4 < 16 && number[index + 4] == 0)
                                                      ){
                                                        setState(() {
                                                          number[number.indexOf(0)] = number[index];
                                                          number[index] = 0;
                                                        });
                                                        check1 = true;
                                                        await animationController.forward().orCancel;
                                                        await animationController.reverse().orCancel;
                                                      }
                                                    } else {
                                                      return;
                                                    }
                                                  },
                                                  child: Container(
                                                    height: 75,
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
                                                        '$numbers6',
                                                        style: const TextStyle(
                                                            fontSize: 20,
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.white
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                              ) :
                                              Padding(
                                                  padding: const EdgeInsets.only(top: 5, left: 5),
                                                  child: Container(
                                                      height: 75,
                                                      decoration: const BoxDecoration(
                                                          color: Colors.blue,
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
                                              )
                                            ),
                                            Expanded(
                                              child: numbers7 != 0 ?
                                              InkWell(
                                                  onTap: () async {
                                                    if(set2 == false){
                                                      if(index - 1 >= 0 && number[index - 1] == 0 && index % 4 != 0 ||
                                                          index + 1 < 16 && number[index + 1] == 0 && (index + 1) % 4 != 0 ||
                                                          (index - 4 >= 0 && number[index - 4] == 0) ||
                                                          (index + 4 < 16 && number[index + 4] == 0)
                                                      ){
                                                        setState(() {
                                                          number[number.indexOf(0)] = number[index];
                                                          number[index] = 0;
                                                        });
                                                        check1 = true;
                                                        await animationController.forward().orCancel;
                                                        await animationController.reverse().orCancel;
                                                      }
                                                    } else {
                                                      return;
                                                    }
                                                  },
                                                  child: Container(
                                                    height: 75,
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
                                                        '$numbers7',
                                                        style: const TextStyle(
                                                            fontSize: 20,
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.white
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                              ) :
                                              Padding(
                                                  padding: const EdgeInsets.only(top: 5, left: 5),
                                                  child: Container(
                                                      height: 75,
                                                      decoration: const BoxDecoration(
                                                          color: Colors.blue,
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
                                              )
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: numbers8 != 0 ?
                                               InkWell(
                                                  onTap: () async {
                                                    if(set2 == false){
                                                      if(index - 1 >= 0 && number[index - 1] == 0 && index % 4 != 0 ||
                                                          index + 1 < 16 && number[index + 1] == 0 && (index + 1) % 4 != 0 ||
                                                          (index - 4 >= 0 && number[index - 4] == 0) ||
                                                          (index + 4 < 16 && number[index + 4] == 0)
                                                      ){
                                                        setState(() {
                                                          number[number.indexOf(0)] = number[index];
                                                          number[index] = 0;
                                                        });
                                                        check1 = true;
                                                        await animationController.forward().orCancel;
                                                        await animationController.reverse().orCancel;
                                                      }
                                                    } else {
                                                      return;
                                                    }
                                                  },
                                                  child: Container(
                                                    height: 75,
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
                                                        '$numbers8',
                                                        style: const TextStyle(
                                                            fontSize: 20,
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.white
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                              ) :
                                              Padding(
                                                  padding: const EdgeInsets.only(top: 5, left: 5),
                                                  child: Container(
                                                      height: 75,
                                                      decoration: const BoxDecoration(
                                                          color: Colors.blue,
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
                                              )
                                            ),
                                            Expanded(
                                              child: numbers9 != 0 ?
                                              InkWell(
                                                  onTap: () async {
                                                    if(set2 == false){
                                                      if(index - 1 >= 0 && number[index - 1] == 0 && index % 4 != 0 ||
                                                          index + 1 < 16 && number[index + 1] == 0 && (index + 1) % 4 != 0 ||
                                                          (index - 4 >= 0 && number[index - 4] == 0) ||
                                                          (index + 4 < 16 && number[index + 4] == 0)
                                                      ){
                                                        setState(() {
                                                          number[number.indexOf(0)] = number[index];
                                                          number[index] = 0;
                                                        });
                                                        check10 = true;
                                                        await animationController.forward().orCancel;
                                                        await animationController.reverse().orCancel;
                                                      }
                                                    } else {
                                                      return;
                                                    }
                                                  },
                                                  child: Container(
                                                    height: 75,
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
                                                        '$numbers9',
                                                        style: const TextStyle(
                                                            fontSize: 20,
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.white
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                              ) :
                                              Padding(
                                                  padding: const EdgeInsets.only(top: 5, left: 5),
                                                  child: Container(
                                                      height: 75,
                                                      decoration: const BoxDecoration(
                                                          color: Colors.blue,
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
                                              )
                                            ),
                                            Expanded(
                                              child: numbers10 != 0 ?
                                              InkWell(
                                                  onTap: () async {
                                                    if(set2 == false){
                                                      if(index - 1 >= 0 && number[index - 1] == 0 && index % 4 != 0 ||
                                                          index + 1 < 16 && number[index + 1] == 0 && (index + 1) % 4 != 0 ||
                                                          (index - 4 >= 0 && number[index - 4] == 0) ||
                                                          (index + 4 < 16 && number[index + 4] == 0)
                                                      ){
                                                        setState(() {
                                                          number[number.indexOf(0)] = number[index];
                                                          number[index] = 0;
                                                        });
                                                        check11 = true;
                                                        await animationController.forward().orCancel;
                                                        await animationController.reverse().orCancel;
                                                      }
                                                    } else {
                                                      return;
                                                    }
                                                  },
                                                  child: Container(
                                                    height: 75,
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
                                                        '$numbers10',
                                                        style: const TextStyle(
                                                            fontSize: 20,
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.white
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                              ) :
                                              Padding(
                                                  padding: const EdgeInsets.only(top: 5, left: 5),
                                                  child: Container(
                                                      height: 75,
                                                      decoration: const BoxDecoration(
                                                          color: Colors.blue,
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
                                              )
                                            ),
                                            Expanded(
                                              child: numbers11 != 0 ?
                                              InkWell(
                                                  onTap: () async {
                                                    if(set2 == false){
                                                      if(index - 1 >= 0 && number[index - 1] == 0 && index % 4 != 0 ||
                                                          index + 1 < 16 && number[index + 1] == 0 && (index + 1) % 4 != 0 ||
                                                          (index - 4 >= 0 && number[index - 4] == 0) ||
                                                          (index + 4 < 16 && number[index + 4] == 0)
                                                      ){
                                                        setState(() {
                                                          number[number.indexOf(0)] = number[index];
                                                          number[index] = 0;
                                                        });
                                                        check12 = true;
                                                        await animationController.forward().orCancel;
                                                        await animationController.reverse().orCancel;
                                                      }
                                                    } else {
                                                      return;
                                                    }
                                                  },
                                                  child: Container(
                                                    height: 75,
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
                                                        '$numbers11',
                                                        style: const TextStyle(
                                                            fontSize: 20,
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.white
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                              ) :
                                              Padding(
                                                  padding: const EdgeInsets.only(top: 5, left: 5),
                                                  child: Container(
                                                      height: 75,
                                                      decoration: const BoxDecoration(
                                                          color: Colors.blue,
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
                                              )
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: numbers12 != 0 ?
                                              InkWell(
                                                  onTap: () async {
                                                    if(set2 == false){
                                                      if(index - 1 >= 0 && number[index - 1] == 0 && index % 4 != 0 ||
                                                          index + 1 < 16 && number[index + 1] == 0 && (index + 1) % 4 != 0 ||
                                                          (index - 4 >= 0 && number[index - 4] == 0) ||
                                                          (index + 4 < 16 && number[index + 4] == 0)
                                                      ){
                                                        setState(() {
                                                          number[number.indexOf(0)] = number[index];
                                                          number[index] = 0;
                                                        });
                                                        check13 = true;
                                                        await animationController.forward().orCancel;
                                                        await animationController.reverse().orCancel;
                                                      }
                                                    } else {
                                                      return;
                                                    }
                                                  },
                                                  child: Container(
                                                    height: 75,
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
                                                        '$numbers12',
                                                        style: const TextStyle(
                                                            fontSize: 20,
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.white
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                              ) :
                                              Padding(
                                                  padding: const EdgeInsets.only(top: 5, left: 5),
                                                  child: Container(
                                                      height: 75,
                                                      decoration: const BoxDecoration(
                                                          color: Colors.blue,
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
                                              )
                                            ),
                                            Expanded(
                                              child: numbers13 != 0 ?
                                              InkWell(
                                                  onTap: () async {
                                                    if(set2 == false){
                                                      if(index - 1 >= 0 && number[index - 1] == 0 && index % 4 != 0 ||
                                                          index + 1 < 16 && number[index + 1] == 0 && (index + 1) % 4 != 0 ||
                                                          (index - 4 >= 0 && number[index - 4] == 0) ||
                                                          (index + 4 < 16 && number[index + 4] == 0)
                                                      ){
                                                        setState(() {
                                                          number[number.indexOf(0)] = number[index];
                                                          number[index] = 0;
                                                        });
                                                        check14 = true;
                                                        await animationController.forward().orCancel;
                                                        await animationController.reverse().orCancel;
                                                      }
                                                    } else {
                                                      return;
                                                    }
                                                  },
                                                  child: Container(
                                                    height: 75,
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
                                                        '$numbers13',
                                                        style: const TextStyle(
                                                            fontSize: 20,
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.white
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                              ) :
                                              Padding(
                                                  padding: const EdgeInsets.only(top: 5, left: 5),
                                                  child: Container(
                                                      height: 75,
                                                      decoration: const BoxDecoration(
                                                          color: Colors.blue,
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
                                              )
                                            ),
                                            Expanded(
                                              child: numbers14 != 0 ?
                                              InkWell(
                                                  onTap: () async {
                                                    if(set2 == false){
                                                      if(index - 1 >= 0 && number[index - 1] == 0 && index % 4 != 0 ||
                                                          index + 1 < 16 && number[index + 1] == 0 && (index + 1) % 4 != 0 ||
                                                          (index - 4 >= 0 && number[index - 4] == 0) ||
                                                          (index + 4 < 16 && number[index + 4] == 0)
                                                      ){
                                                        setState(() {
                                                          number[number.indexOf(0)] = number[index];
                                                          number[index] = 0;
                                                        });
                                                        check15 = true;
                                                        await animationController.forward().orCancel;
                                                        await animationController.reverse().orCancel;
                                                      }
                                                    } else {
                                                      return;
                                                    }
                                                  },
                                                  child: Container(
                                                    height: 75,
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
                                                        '$numbers14',
                                                        style: const TextStyle(
                                                            fontSize: 20,
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.white
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                              ) :
                                              Padding(
                                                  padding: const EdgeInsets.only(top: 5, left: 5),
                                                  child: Container(
                                                      height: 75,
                                                      decoration: const BoxDecoration(
                                                          color: Colors.blue,
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
                                              )
                                            ),
                                            Expanded(
                                              child: numbers15 != 0 ?
                                              InkWell(
                                                  onTap: () async {
                                                    if(set2 == false){
                                                      if(index - 1 >= 0 && number[index - 1] == 0 && index % 4 != 0 ||
                                                          index + 1 < 16 && number[index + 1] == 0 && (index + 1) % 4 != 0 ||
                                                          (index - 4 >= 0 && number[index - 4] == 0) ||
                                                          (index + 4 < 16 && number[index + 4] == 0)
                                                      ){
                                                        setState(() {
                                                          number[number.indexOf(0)] = number[index];
                                                          number[index] = 0;
                                                        });
                                                        check16 = true;
                                                        await animationController.forward().orCancel;
                                                        await animationController.reverse().orCancel;
                                                      }
                                                    } else {
                                                      return;
                                                    }
                                                  },
                                                  child: Container(
                                                    height: 75,
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
                                                        '$numbers15',
                                                        style: const TextStyle(
                                                            fontSize: 20,
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.white
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                              ) :
                                              Padding(
                                                  padding: const EdgeInsets.only(top: 5, left: 5),
                                                  child: Container(
                                                      height: 75,
                                                      decoration: const BoxDecoration(
                                                          color: Colors.blue,
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
                                              )
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  );

/*

                check1 == true ?
                Container(
                      height: size.height * 0.6,
                      child: LoopAnimation<TimelineValue<AniProps>>(
                        tween: _tween, // Pass in tween
                        duration: _tween.duration, // Obtain duration
                        builder: (context, child, value) {
                          return Transform.translate(
                            // Get animated offset
                            offset: Offset(0.0, value.get(AniProps.y)),
                            child: Image.network(
                              'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                              width: 50,
                              height: 50,
                            )
                          );
                        },
                      ),
                    ) :
                Image.network(
                  'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                  width: 50,
                  height: 50,
                )
 */
AnimatedBuilder(
                  animation: animationController,
                  builder: (context, child){
                    return Container(
                      padding: animation.value,
                      child: Container(
                        width: 50,
                        height: animation1.value,
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                width: 5,
                                color: Colors.orange,
                              ),
                            ),
                            Image.network(
                              'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
                              width: 50,
                              height: 50,
                            )
                          ],
                        ),
                      )
                    );
                  },
                )

Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                height: size.height * 0.60,
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                    ),
                    itemCount: number.length,
                    itemBuilder: (context, index){
                      final numbers = number[index];

                      return number[index] != 0 ?
                      InkWell(
                          onTap: () {
                            if(set2 == false){
                              if(index - 1 >= 0 && number[index - 1] == 0 && index % 4 != 0 ||
                                  index + 1 < 16 && number[index + 1] == 0 && (index + 1) % 4 != 0 ||
                                  (index - 4 >= 0 && number[index - 4] == 0) ||
                                  (index + 4 < 16 && number[index + 4] == 0)
                              ){
                                setState(() {
                                  number[number.indexOf(0)] = number[index];
                                  number[index] = 0;
                                });
                              }
                            } else {
                              return;
                            }
                          },
                          child: Padding(
                              padding: const EdgeInsets.only(top: 5, left: 5),
                              child: Container(
                                  height: size.height * 0.60,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVhhwieE8OJ41igDguL_57DNNsx7-P09wWDg&usqp=CAU"
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
                                  )
                              )
                          )
                      ) :
                      Padding(
                          padding: const EdgeInsets.only(top: 5, left: 5),
                          child: Container(
                              height: size.height * 0.60,
                              decoration: const BoxDecoration(
                                  color: Colors.blue,
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
 */




