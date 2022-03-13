import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:puzzle_app/Chinesegame/chinesegame1.dart';
import 'package:puzzle_app/Chinesegame/chinesegame10.dart';
import 'package:puzzle_app/Chinesegame/chinesegame11.dart';
import 'package:puzzle_app/Chinesegame/chinesegame12.dart';
import 'package:puzzle_app/Chinesegame/chinesegame13.dart';
import 'package:puzzle_app/Chinesegame/chinesegame14.dart';
import 'package:puzzle_app/Chinesegame/chinesegame15.dart';
import 'package:puzzle_app/Chinesegame/chinesegame16.dart';
import 'package:puzzle_app/Chinesegame/chinesegame17.dart';
import 'package:puzzle_app/Chinesegame/chinesegame18.dart';
import 'package:puzzle_app/Chinesegame/chinesegame19.dart';
import 'package:puzzle_app/Chinesegame/chinesegame2.dart';
import 'package:puzzle_app/Chinesegame/chinesegame20.dart';
import 'package:puzzle_app/Chinesegame/chinesegame21.dart';
import 'package:puzzle_app/Chinesegame/chinesegame22.dart';
import 'package:puzzle_app/Chinesegame/chinesegame23.dart';
import 'package:puzzle_app/Chinesegame/chinesegame24.dart';
import 'package:puzzle_app/Chinesegame/chinesegame25.dart';
import 'package:puzzle_app/Chinesegame/chinesegame26.dart';
import 'package:puzzle_app/Chinesegame/chinesegame27.dart';
import 'package:puzzle_app/Chinesegame/chinesegame28.dart';
import 'package:puzzle_app/Chinesegame/chinesegame29.dart';
import 'package:puzzle_app/Chinesegame/chinesegame3.dart';
import 'package:puzzle_app/Chinesegame/chinesegame30.dart';
import 'package:puzzle_app/Chinesegame/chinesegame31.dart';
import 'package:puzzle_app/Chinesegame/chinesegame32.dart';
import 'package:puzzle_app/Chinesegame/chinesegame4.dart';
import 'package:puzzle_app/Chinesegame/chinesegame5.dart';
import 'package:puzzle_app/Chinesegame/chinesegame6.dart';
import 'package:puzzle_app/Chinesegame/chinesegame7.dart';
import 'package:puzzle_app/Chinesegame/chinesegame8.dart';
import 'package:puzzle_app/Chinesegame/chinesegame9.dart';
import 'package:puzzle_app/firstinit.dart';
import 'package:puzzle_app/nextpuzzle/gameview.dart';


// ignore: camel_case_types, must_be_immutable
class chinesepage extends StatefulWidget {

  String name;
  String pic;
  String email;

  chinesepage({
    Key? key,
    required this.name,
    required this.pic,
    required this.email,
  }) : super(key: key);

  @override
  _chinesepageState createState() => _chinesepageState();
}

// ignore: camel_case_types
class _chinesepageState extends State<chinesepage> with TickerProviderStateMixin {

  late final AnimationController _controller = AnimationController(
  vsync: this, // the SingleTickerProviderStateMixin
  duration: const Duration(seconds: 2),
  )..forward();
  late final Animation<double> _animation = CurvedAnimation(
  parent: _controller,
  curve: Curves.easeIn,
  );

  late final AnimationController _controller2 = AnimationController(
    vsync: this, // the SingleTickerProviderStateMixin
    duration: const Duration(seconds: 4),
  )..forward();
  late final Animation<double> _animation2 = CurvedAnimation(
    parent: _controller2,
    curve: Curves.easeIn,
  );

  late final AnimationController _controller3 = AnimationController(
    vsync: this, // the SingleTickerProviderStateMixin
    duration: const Duration(seconds: 6),
  )..forward();
  late final Animation<double> _animation3 = CurvedAnimation(
    parent: _controller3,
    curve: Curves.easeIn,
  );

  late final AnimationController _controller4 = AnimationController(
    vsync: this, // the SingleTickerProviderStateMixin
    duration: const Duration(seconds: 8),
  )..forward();
  late final Animation<double> _animation4 = CurvedAnimation(
    parent: _controller4,
    curve: Curves.easeIn,
  );

  late final AnimationController _controller5 = AnimationController(
    vsync: this, // the SingleTickerProviderStateMixin
    duration: const Duration(seconds: 2),
  )..forward();
  late final Animation<double> _animation5 = CurvedAnimation(
    parent: _controller5,
    curve: Curves.easeIn,
  );

  late final AnimationController _controller6 = AnimationController(
    vsync: this, // the SingleTickerProviderStateMixin
    duration: const Duration(seconds: 4),
  )..forward();
  late final Animation<double> _animation6 = CurvedAnimation(
    parent: _controller6,
    curve: Curves.easeIn,
  );

  late final AnimationController _controller7 = AnimationController(
    vsync: this, // the SingleTickerProviderStateMixin
    duration: const Duration(seconds: 6),
  )..forward();
  late final Animation<double> _animation7 = CurvedAnimation(
    parent: _controller7,
    curve: Curves.easeIn,
  );

  late final AnimationController _controller8 = AnimationController(
    vsync: this, // the SingleTickerProviderStateMixin
    duration: const Duration(seconds: 8),
  )..forward();
  late final Animation<double> _animation8 = CurvedAnimation(
    parent: _controller8,
    curve: Curves.easeIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();
    _controller5.dispose();
    _controller6.dispose();
    _controller7.dispose();
    _controller8.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    CollectionReference ref = FirebaseFirestore.instance.collection(widget.name + ' Chinese Game(1)');
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.indigo,
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            pinned: true,
            backgroundColor: Colors.purple,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Chinese'),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index){
                  return Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 15, left: 10),
                        child: Text(
                          'Four-Character Idiom (Chinese)',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.yellow,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              child: FadeTransition(
                                opacity: _animation,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        PageRouteBuilder(
                                            transitionDuration: const Duration(
                                                seconds: 3
                                            ),
                                            transitionsBuilder: (context, animated, secAnimation, child) {
                                              return RotationTransition(
                                                alignment: Alignment.center,
                                                turns: animated,
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
                                        color: Colors.yellow
                                    ),
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: const [
                                          Text(
                                            '1',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 25,
                                                fontFamily: 'TitanOne'
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              )
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              child: FadeTransition(
                                opacity: _animation2,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        PageRouteBuilder(
                                            transitionDuration: const Duration(
                                                seconds: 3
                                            ),
                                            transitionsBuilder: (context, animated, secAnimation, child) {
                                              return RotationTransition(
                                                alignment: Alignment.center,
                                                turns: animated,
                                                child: child,
                                              );
                                            },
                                            pageBuilder: (context, animated, secAnimation){
                                              return chinesegame2(
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
                                        color: Colors.yellow
                                    ),
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: const [
                                          Text(
                                            '2',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 25,
                                                fontFamily: 'TitanOne'
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              child: FadeTransition(
                                opacity: _animation3,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        PageRouteBuilder(
                                            transitionDuration: const Duration(
                                                seconds: 3
                                            ),
                                            transitionsBuilder: (context, animated, secAnimation, child) {
                                              return RotationTransition(
                                                alignment: Alignment.center,
                                                turns: animated,
                                                child: child,
                                              );
                                            },
                                            pageBuilder: (context, animated, secAnimation){
                                              return chinesegame3(
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
                                        color: Colors.yellow
                                    ),
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: const [
                                          Text(
                                            '3',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 25,
                                                fontFamily: 'TitanOne'
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              child: FadeTransition(
                                opacity: _animation4,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        PageRouteBuilder(
                                            transitionDuration: const Duration(
                                                seconds: 3
                                            ),
                                            transitionsBuilder: (context, animated, secAnimation, child) {
                                              return RotationTransition(
                                                alignment: Alignment.center,
                                                turns: animated,
                                                child: child,
                                              );
                                            },
                                            pageBuilder: (context, animated, secAnimation){
                                              return chinesegame4(
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
                                        color: Colors.yellow
                                    ),
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: const [
                                          Text(
                                            '4',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 25,
                                                fontFamily: 'TitanOne'
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(left: 10, top: 15),
                                child: FadeTransition(
                                  opacity: _animation5,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          PageRouteBuilder(
                                              transitionDuration: const Duration(
                                                  seconds: 3
                                              ),
                                              transitionsBuilder: (context, animated, secAnimation, child) {
                                                return RotationTransition(
                                                  alignment: Alignment.center,
                                                  turns: animated,
                                                  child: child,
                                                );
                                              },
                                              pageBuilder: (context, animated, secAnimation){
                                                return chinesegame5(
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
                                          color: Colors.yellow
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              '5',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 25,
                                                  fontFamily: 'TitanOne'
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            ),
                          ),
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(left: 10, top: 15),
                                child: FadeTransition(
                                  opacity: _animation6,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          PageRouteBuilder(
                                              transitionDuration: const Duration(
                                                  seconds: 3
                                              ),
                                              transitionsBuilder: (context, animated, secAnimation, child) {
                                                return RotationTransition(
                                                  alignment: Alignment.center,
                                                  turns: animated,
                                                  child: child,
                                                );
                                              },
                                              pageBuilder: (context, animated, secAnimation){
                                                return chinesegame6(
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
                                          color: Colors.yellow
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              '6',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 25,
                                                  fontFamily: 'TitanOne'
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            ),
                          ),
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(left: 10, top: 15),
                                child: FadeTransition(
                                  opacity: _animation7,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          PageRouteBuilder(
                                              transitionDuration: const Duration(
                                                  seconds: 3
                                              ),
                                              transitionsBuilder: (context, animated, secAnimation, child) {
                                                return RotationTransition(
                                                  alignment: Alignment.center,
                                                  turns: animated,
                                                  child: child,
                                                );
                                              },
                                              pageBuilder: (context, animated, secAnimation){
                                                return chinesegame7(
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
                                          color: Colors.yellow
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              '7',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 25,
                                                  fontFamily: 'TitanOne'
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            ),
                          ),
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(left: 10, top: 15),
                                child: FadeTransition(
                                  opacity: _animation8,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          PageRouteBuilder(
                                              transitionDuration: const Duration(
                                                  seconds: 3
                                              ),
                                              transitionsBuilder: (context, animated, secAnimation, child) {
                                                return RotationTransition(
                                                  alignment: Alignment.center,
                                                  turns: animated,
                                                  child: child,
                                                );
                                              },
                                              pageBuilder: (context, animated, secAnimation){
                                                return chinesegame8(
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
                                          color: Colors.yellow
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              '8',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 25,
                                                  fontFamily: 'TitanOne'
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(left: 10, top: 15),
                                child: FadeTransition(
                                  opacity: _animation5,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          PageRouteBuilder(
                                              transitionDuration: const Duration(
                                                  seconds: 3
                                              ),
                                              transitionsBuilder: (context, animated, secAnimation, child) {
                                                return RotationTransition(
                                                  alignment: Alignment.center,
                                                  turns: animated,
                                                  child: child,
                                                );
                                              },
                                              pageBuilder: (context, animated, secAnimation){
                                                return const chinesegame9();
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
                                          color: Colors.yellow
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              '9',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 25,
                                                  fontFamily: 'TitanOne'
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            ),
                          ),
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(left: 10, top: 15),
                                child: FadeTransition(
                                  opacity: _animation6,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          PageRouteBuilder(
                                              transitionDuration: const Duration(
                                                  seconds: 3
                                              ),
                                              transitionsBuilder: (context, animated, secAnimation, child) {
                                                return RotationTransition(
                                                  alignment: Alignment.center,
                                                  turns: animated,
                                                  child: child,
                                                );
                                              },
                                              pageBuilder: (context, animated, secAnimation){
                                                return const chinesegame10();
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
                                          color: Colors.yellow
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              '10',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 25,
                                                  fontFamily: 'TitanOne'
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            ),
                          ),
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(left: 10, top: 15),
                                child: FadeTransition(
                                  opacity: _animation7,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          PageRouteBuilder(
                                              transitionDuration: const Duration(
                                                  seconds: 3
                                              ),
                                              transitionsBuilder: (context, animated, secAnimation, child) {
                                                return RotationTransition(
                                                  alignment: Alignment.center,
                                                  turns: animated,
                                                  child: child,
                                                );
                                              },
                                              pageBuilder: (context, animated, secAnimation){
                                                return const chinesegame11();
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
                                          color: Colors.yellow
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              '11',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 25,
                                                  fontFamily: 'TitanOne'
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            ),
                          ),
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(left: 10, top: 15),
                                child: FadeTransition(
                                  opacity: _animation8,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          PageRouteBuilder(
                                              transitionDuration: const Duration(
                                                  seconds: 3
                                              ),
                                              transitionsBuilder: (context, animated, secAnimation, child) {
                                                return RotationTransition(
                                                  alignment: Alignment.center,
                                                  turns: animated,
                                                  child: child,
                                                );
                                              },
                                              pageBuilder: (context, animated, secAnimation){
                                                return const chinesegame12();
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
                                          color: Colors.yellow
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              '12',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 25,
                                                  fontFamily: 'TitanOne'
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(left: 10, top: 15),
                                child: FadeTransition(
                                  opacity: _animation5,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          PageRouteBuilder(
                                              transitionDuration: const Duration(
                                                  seconds: 3
                                              ),
                                              transitionsBuilder: (context, animated, secAnimation, child) {
                                                return RotationTransition(
                                                  alignment: Alignment.center,
                                                  turns: animated,
                                                  child: child,
                                                );
                                              },
                                              pageBuilder: (context, animated, secAnimation){
                                                return const chinesegame13();
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
                                          color: Colors.yellow
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              '13',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 25,
                                                  fontFamily: 'TitanOne'
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            ),
                          ),
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(left: 10, top: 15),
                                child: FadeTransition(
                                  opacity: _animation6,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          PageRouteBuilder(
                                              transitionDuration: const Duration(
                                                  seconds: 3
                                              ),
                                              transitionsBuilder: (context, animated, secAnimation, child) {
                                                return RotationTransition(
                                                  alignment: Alignment.center,
                                                  turns: animated,
                                                  child: child,
                                                );
                                              },
                                              pageBuilder: (context, animated, secAnimation){
                                                return const chinesegame14();
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
                                          color: Colors.yellow
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              '14',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 25,
                                                  fontFamily: 'TitanOne'
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            ),
                          ),
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(left: 10, top: 15),
                                child: FadeTransition(
                                  opacity: _animation7,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          PageRouteBuilder(
                                              transitionDuration: const Duration(
                                                  seconds: 3
                                              ),
                                              transitionsBuilder: (context, animated, secAnimation, child) {
                                                return RotationTransition(
                                                  alignment: Alignment.center,
                                                  turns: animated,
                                                  child: child,
                                                );
                                              },
                                              pageBuilder: (context, animated, secAnimation){
                                                return const chinesegame15();
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
                                          color: Colors.yellow
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              '15',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 25,
                                                  fontFamily: 'TitanOne'
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            ),
                          ),
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(left: 10, top: 15),
                                child: FadeTransition(
                                  opacity: _animation8,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          PageRouteBuilder(
                                              transitionDuration: const Duration(
                                                  seconds: 3
                                              ),
                                              transitionsBuilder: (context, animated, secAnimation, child) {
                                                return RotationTransition(
                                                  alignment: Alignment.center,
                                                  turns: animated,
                                                  child: child,
                                                );
                                              },
                                              pageBuilder: (context, animated, secAnimation){
                                                return const chinesegame16();
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
                                          color: Colors.yellow
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              '16',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 25,
                                                  fontFamily: 'TitanOne'
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 15, left: 10),
                        child: Text(
                          'Puzzle && Distinguish Puzzle (Chinese)',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.yellow,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(left: 10, top: 15),
                                child: FadeTransition(
                                  opacity: _animation5,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          PageRouteBuilder(
                                              transitionDuration: const Duration(
                                                  seconds: 3
                                              ),
                                              transitionsBuilder: (context, animated, secAnimation, child) {
                                                return RotationTransition(
                                                  alignment: Alignment.center,
                                                  turns: animated,
                                                  child: child,
                                                );
                                              },
                                              pageBuilder: (context, animated, secAnimation){
                                                return const chinesegame17();
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
                                          color: Colors.yellow
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              '17',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 25,
                                                  fontFamily: 'TitanOne'
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            ),
                          ),
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(left: 10, top: 15),
                                child: FadeTransition(
                                  opacity: _animation6,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          PageRouteBuilder(
                                              transitionDuration: const Duration(
                                                  seconds: 3
                                              ),
                                              transitionsBuilder: (context, animated, secAnimation, child) {
                                                return RotationTransition(
                                                  alignment: Alignment.center,
                                                  turns: animated,
                                                  child: child,
                                                );
                                              },
                                              pageBuilder: (context, animated, secAnimation){
                                                return const chinesegame18();
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
                                          color: Colors.yellow
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              '18',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 25,
                                                  fontFamily: 'TitanOne'
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            ),
                          ),
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(left: 10, top: 15),
                                child: FadeTransition(
                                  opacity: _animation7,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          PageRouteBuilder(
                                              transitionDuration: const Duration(
                                                  seconds: 3
                                              ),
                                              transitionsBuilder: (context, animated, secAnimation, child) {
                                                return RotationTransition(
                                                  alignment: Alignment.center,
                                                  turns: animated,
                                                  child: child,
                                                );
                                              },
                                              pageBuilder: (context, animated, secAnimation){
                                                return const chinesegame19();
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
                                          color: Colors.yellow
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              '19',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 25,
                                                  fontFamily: 'TitanOne'
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            ),
                          ),
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(left: 10, top: 15),
                                child: FadeTransition(
                                  opacity: _animation8,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          PageRouteBuilder(
                                              transitionDuration: const Duration(
                                                  seconds: 3
                                              ),
                                              transitionsBuilder: (context, animated, secAnimation, child) {
                                                return RotationTransition(
                                                  alignment: Alignment.center,
                                                  turns: animated,
                                                  child: child,
                                                );
                                              },
                                              pageBuilder: (context, animated, secAnimation){
                                                return const chinesegame20();
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
                                          color: Colors.yellow
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              '20',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 25,
                                                  fontFamily: 'TitanOne'
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(left: 10, top: 15),
                                child: FadeTransition(
                                  opacity: _animation5,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          PageRouteBuilder(
                                              transitionDuration: const Duration(
                                                  seconds: 3
                                              ),
                                              transitionsBuilder: (context, animated, secAnimation, child) {
                                                return RotationTransition(
                                                  alignment: Alignment.center,
                                                  turns: animated,
                                                  child: child,
                                                );
                                              },
                                              pageBuilder: (context, animated, secAnimation){
                                                return const chinesegame21();
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
                                          color: Colors.yellow
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              '21',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 25,
                                                  fontFamily: 'TitanOne'
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            ),
                          ),
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(left: 10, top: 15),
                                child: FadeTransition(
                                  opacity: _animation6,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          PageRouteBuilder(
                                              transitionDuration: const Duration(
                                                  seconds: 3
                                              ),
                                              transitionsBuilder: (context, animated, secAnimation, child) {
                                                return RotationTransition(
                                                  alignment: Alignment.center,
                                                  turns: animated,
                                                  child: child,
                                                );
                                              },
                                              pageBuilder: (context, animated, secAnimation){
                                                return const chinesegame22();
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
                                          color: Colors.yellow
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              '22',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 25,
                                                  fontFamily: 'TitanOne'
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            ),
                          ),
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(left: 10, top: 15),
                                child: FadeTransition(
                                  opacity: _animation7,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          PageRouteBuilder(
                                              transitionDuration: const Duration(
                                                  seconds: 3
                                              ),
                                              transitionsBuilder: (context, animated, secAnimation, child) {
                                                return RotationTransition(
                                                  alignment: Alignment.center,
                                                  turns: animated,
                                                  child: child,
                                                );
                                              },
                                              pageBuilder: (context, animated, secAnimation){
                                                return const chinesegame23();
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
                                          color: Colors.yellow
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              '23',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 25,
                                                  fontFamily: 'TitanOne'
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            ),
                          ),
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(left: 10, top: 15),
                                child: FadeTransition(
                                  opacity: _animation8,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          PageRouteBuilder(
                                              transitionDuration: const Duration(
                                                  seconds: 3
                                              ),
                                              transitionsBuilder: (context, animated, secAnimation, child) {
                                                return RotationTransition(
                                                  alignment: Alignment.center,
                                                  turns: animated,
                                                  child: child,
                                                );
                                              },
                                              pageBuilder: (context, animated, secAnimation){
                                                return const chinesegame24();
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
                                          color: Colors.yellow
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              '24',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 25,
                                                  fontFamily: 'TitanOne'
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(left: 10, top: 15),
                                child: FadeTransition(
                                  opacity: _animation5,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          PageRouteBuilder(
                                              transitionDuration: const Duration(
                                                  seconds: 3
                                              ),
                                              transitionsBuilder: (context, animated, secAnimation, child) {
                                                return RotationTransition(
                                                  alignment: Alignment.center,
                                                  turns: animated,
                                                  child: child,
                                                );
                                              },
                                              pageBuilder: (context, animated, secAnimation){
                                                return const chinesegame25();
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
                                          color: Colors.yellow
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              '25',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 25,
                                                  fontFamily: 'TitanOne'
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            ),
                          ),
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(left: 10, top: 15),
                                child: FadeTransition(
                                  opacity: _animation6,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          PageRouteBuilder(
                                              transitionDuration: const Duration(
                                                  seconds: 3
                                              ),
                                              transitionsBuilder: (context, animated, secAnimation, child) {
                                                return RotationTransition(
                                                  alignment: Alignment.center,
                                                  turns: animated,
                                                  child: child,
                                                );
                                              },
                                              pageBuilder: (context, animated, secAnimation){
                                                return const chinesegame26();
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
                                          color: Colors.yellow
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              '26',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 25,
                                                  fontFamily: 'TitanOne'
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            ),
                          ),
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(left: 10, top: 15),
                                child: FadeTransition(
                                  opacity: _animation7,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          PageRouteBuilder(
                                              transitionDuration: const Duration(
                                                  seconds: 3
                                              ),
                                              transitionsBuilder: (context, animated, secAnimation, child) {
                                                return RotationTransition(
                                                  alignment: Alignment.center,
                                                  turns: animated,
                                                  child: child,
                                                );
                                              },
                                              pageBuilder: (context, animated, secAnimation){
                                                return const chinesegame27();
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
                                          color: Colors.yellow
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              '27',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 25,
                                                  fontFamily: 'TitanOne'
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            ),
                          ),
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(left: 10, top: 15),
                                child: FadeTransition(
                                  opacity: _animation8,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          PageRouteBuilder(
                                              transitionDuration: const Duration(
                                                  seconds: 3
                                              ),
                                              transitionsBuilder: (context, animated, secAnimation, child) {
                                                return RotationTransition(
                                                  alignment: Alignment.center,
                                                  turns: animated,
                                                  child: child,
                                                );
                                              },
                                              pageBuilder: (context, animated, secAnimation){
                                                return const chinesegame28();
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
                                          color: Colors.yellow
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              '28',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 25,
                                                  fontFamily: 'TitanOne'
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(left: 10, top: 15),
                                child: FadeTransition(
                                  opacity: _animation5,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          PageRouteBuilder(
                                              transitionDuration: const Duration(
                                                  seconds: 3
                                              ),
                                              transitionsBuilder: (context, animated, secAnimation, child) {
                                                return RotationTransition(
                                                  alignment: Alignment.center,
                                                  turns: animated,
                                                  child: child,
                                                );
                                              },
                                              pageBuilder: (context, animated, secAnimation){
                                                return const chinesegame29();
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
                                          color: Colors.yellow
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              '29',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 25,
                                                  fontFamily: 'TitanOne'
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            ),
                          ),
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(left: 10, top: 15),
                                child: FadeTransition(
                                  opacity: _animation6,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          PageRouteBuilder(
                                              transitionDuration: const Duration(
                                                  seconds: 3
                                              ),
                                              transitionsBuilder: (context, animated, secAnimation, child) {
                                                return RotationTransition(
                                                  alignment: Alignment.center,
                                                  turns: animated,
                                                  child: child,
                                                );
                                              },
                                              pageBuilder: (context, animated, secAnimation){
                                                return const chinesegame30();
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
                                          color: Colors.yellow
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              '30',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 25,
                                                fontFamily: 'TitanOne'
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            ),
                          ),
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(left: 10, top: 15),
                                child: FadeTransition(
                                  opacity: _animation7,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          PageRouteBuilder(
                                              transitionDuration: const Duration(
                                                  seconds: 3
                                              ),
                                              transitionsBuilder: (context, animated, secAnimation, child) {
                                                return RotationTransition(
                                                  alignment: Alignment.center,
                                                  turns: animated,
                                                  child: child,
                                                );
                                              },
                                              pageBuilder: (context, animated, secAnimation){
                                                return const chinesegame31();
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
                                          color: Colors.yellow
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              '31',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 25,
                                                  fontFamily: 'TitanOne'
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            ),
                          ),
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(left: 10, top: 15),
                                child: FadeTransition(
                                  opacity: _animation8,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          PageRouteBuilder(
                                              transitionDuration: const Duration(
                                                  seconds: 3
                                              ),
                                              transitionsBuilder: (context, animated, secAnimation, child) {
                                                return RotationTransition(
                                                  alignment: Alignment.center,
                                                  turns: animated,
                                                  child: child,
                                                );
                                              },
                                              pageBuilder: (context, animated, secAnimation){
                                                return const GameView();
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
                                          color: Colors.yellow
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              '32',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 25,
                                                  fontFamily: 'TitanOne'
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            ),
                          ),
                        ],
                      )
                    ],
                  );
                },
              childCount: 1
            ),
          )
        ],
      )
    );
  }
}

/*
SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return const Text(
                    '1'
                );
              },
            ),
          )

ListView(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(
                      children: [
                        Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: InkWell(
                                onTap: () {},
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
                                              color: Colors.lightBlueAccent,
                                              fontSize: 17
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )
 */



