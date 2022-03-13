import 'dart:async';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sequence_animation/flutter_sequence_animation.dart';
import 'package:lottie/lottie.dart';


// ignore: camel_case_types
class quickgreenpage extends StatefulWidget {

  String name;
  String pic;
  String email;

  quickgreenpage({
    Key? key,
    required this.name,
    required this.pic,
    required this.email,
  }) : super(key: key);

  @override
  _quickgreenpageState createState() => _quickgreenpageState();
}

// ignore: camel_case_types
class _quickgreenpageState extends State<quickgreenpage> with TickerProviderStateMixin {

  bool set2 = false;
  var number = [
    'assets/green/1.png',
    'assets/green/2.png',
    'assets/green/3.png',
    'assets/green/4.png',
    'assets/green/5.png',
    'assets/green/6.png',
    'assets/green/7.png',
    'assets/green/8.png',
    'assets/green/9.png',
    'assets/green/10.png',
    'assets/green/11.png',
    'assets/green/12.png',
    'assets/green/13.png',
    'assets/green/14.png',
    'assets/green/15.png',
    0
  ];
  CollectionReference reference = FirebaseFirestore.instance.collection('Quick Slide Puzzle(3)');

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

    CollectionReference ref = FirebaseFirestore.instance.collection(widget.name + ' Quick Slide Puzzle(3)');
    final size = MediaQuery.of(context).size;
    final angle = dragPosition / 180 * pi;
    final transform = Matrix4.identity()
      ..setEntry(3, 2, 0.001)
      ..rotateX(angle);

    // ignore: prefer_conditional_assignment
    if (timer == null) {
      timer = Timer.periodic(
          duration,
              (timer) {
            starttime();
          }
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: const Text(
            'Slide Puzzle (3)',
          ),
          actions: [
            Center(
              child: TextButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                            backgroundColor: Colors.white,
                            child: Container(
                              height: 250,
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: Text(
                                        'Hint(1)'
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Center(
                                      child: Image.asset(
                                        'assets/green/green.png',
                                        width: 150,
                                        height: 150,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Container(
                                        width: 70,
                                        height: 30,
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10),
                                              bottomRight: Radius.circular(10),
                                              bottomLeft: Radius.circular(10),
                                            ),
                                            color: Colors.indigo
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'Back',
                                            style: TextStyle(
                                              color: Colors.yellow,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                        );
                      }
                  );
                },
                child: const Text(
                  'Hint(1)',
                  style: TextStyle(
                      color: Colors.yellow
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Center(
                child: TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                              backgroundColor: Colors.white,
                              child: Container(
                                height: 250,
                                child: Column(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(top: 15),
                                      child: Text(
                                          'Hint(2)'
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/green/greenpuzzle.png',
                                          width: 150,
                                          height: 150,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Container(
                                          width: 70,
                                          height: 30,
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                topRight: Radius.circular(10),
                                                bottomRight: Radius.circular(10),
                                                bottomLeft: Radius.circular(10),
                                              ),
                                              color: Colors.indigo
                                          ),
                                          child: const Center(
                                            child: Text(
                                              'Back',
                                              style: TextStyle(
                                                color: Colors.yellow,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                          );
                        }
                    );
                  },
                  child: const Text(
                    'Hint(2)',
                    style: TextStyle(
                        color: Colors.yellow
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        body: SafeArea(
          child: ListView(
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
                          crossAxisCount: 4,
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
                                  if (index - 1 >= 0 && number[index - 1] == 0 && index % 4 != 0 || //left
                                      index + 1 < 16 && number[index + 1] == 0 && (index + 1) % 4 != 0 || //right
                                      (index - 4 >= 0 && number[index - 4] == 0) || // Up
                                      (index + 4 < 16 && number[index + 4] == 0)) {
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
                                    child: Image.asset(
                                      '$numbers',
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
                                    child: Image.asset(
                                      '$numbers',
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
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://lh3.googleusercontent.com/wEpdmU0qYb6-FPLeAwhPGpOG9x9YNz5bXKy1DiLled1xr5HtqwFYAUGIfnr7nNgoKN20WhBQTTs1XoC9aLDUDXx1VkjqEAWgLoaSXWbyek3pkltmYDRaNgPvmcswzZFUg95qDYcURfo=w400"
                                        ),
                                        fit: BoxFit.cover
                                    )
                                ),
                                child: Image.asset(
                                  '$numbers',
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
                  ),
                ),
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
          ),
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
              'Time' : secondsPassed.toString(),
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
              'Time' : secondsPassed.toString(),
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
    if(start && set2 != true){
      setState(() {
        secondsPassed += 1;
      });
    } else if (set2 == true) {
      setState(() {
        secondsPassed += 0;
      });
    }
  }
}



