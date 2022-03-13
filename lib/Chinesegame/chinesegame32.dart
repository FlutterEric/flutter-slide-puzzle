import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_sequence_animation/flutter_sequence_animation.dart';

// ignore: camel_case_types
class chinesegame32 extends StatefulWidget {
  const chinesegame32({Key? key}) : super(key: key);

  @override
  chinesegame32State createState() => chinesegame32State();
}

class chinesegame32State extends State<chinesegame32> with SingleTickerProviderStateMixin{

  late AnimationController controller;
  late SequenceAnimation sequenceAnimation;

  @override
  void initState() {
    super.initState();
    controller = new AnimationController(vsync: this);

    /*
    sequenceAnimation = new SequenceAnimationBuilder()
        .addAnimatable(
        animatable: new Tween<double>(begin: 0.0, end: 1.0),
        from: Duration.zero,
        to: const Duration(seconds: 1),
        curve: Curves.ease,
        tag: "opacity"
    ).addAnimatable(
        animatable: new Tween<double>(begin: 50.0, end: 150.0),
        from: const Duration(seconds: 2),
        to: const Duration(seconds: 3),
        curve: Curves.ease,
        tag: "width"
    ).addAnimatable(
        animatable: new Tween<double>(begin: 50.0, end: 150.0),
        from: const Duration(seconds: 3),
        to: const Duration(seconds: 4),
        curve: Curves.ease,
        tag: "height"
    ).addAnimatable(
        animatable: new EdgeInsetsTween(begin: const EdgeInsets.only(bottom: 16.0), end: const EdgeInsets.only(bottom: 75.0),),
        from: const Duration(seconds: 3),
        to: const Duration(seconds: 4),
        curve: Curves.ease,
        tag: "padding"
    ).addAnimatable(
        animatable: new BorderRadiusTween(begin: new BorderRadius.circular(4.0), end: new BorderRadius.circular(75.0),),
        from: const Duration(seconds: 4),
        to: const Duration(seconds: 5),
        curve: Curves.ease,
        tag: "borderRadius"
    ).addAnimatable(
        animatable: new ColorTween(begin: Colors.indigo[100], end: Colors.orange[400],),
        from: const Duration(seconds: 5),
        to: const Duration(seconds: 6),
        curve: Curves.ease,
        tag: "color"
    ).animate(controller);
     */

    sequenceAnimation = new SequenceAnimationBuilder()
        .addAnimatable(
        animatable: new Tween<double>(begin:0.0 , end: 200.0),
        from: Duration.zero,
        to: const Duration(seconds: 2),
        curve: Curves.ease,
        tag: "height"
    ).addAnimatable(
        animatable: new Tween<double>(begin: 200, end: 150.0),
        from: const Duration(seconds: 2),
        to: const Duration(seconds: 3),
        curve: Curves.ease,
        tag: "heighttoo"
    ).animate(controller);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget _buildAnimation(BuildContext context, Widget? child) {
    return Image.network(
      'https://cdn-icons-png.flaticon.com/512/4244/4244713.png',
      width: 50,
      height: sequenceAnimation['height'].value,
    );
  }

  Future<Null> _playAnimation() async {
    try {
      await controller.forward().orCancel;
      await controller.reverse().orCancel;
    } on TickerCanceled {
      // the animation got canceled, probably because we were disposed
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Staggered Animation"),
      ),
      body: new GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          _playAnimation();
        },
        child: new Center(
          child: new Container(
            width: 300.0,
            height: 300.0,
            decoration: new BoxDecoration(
              color: Colors.black.withOpacity(0.1),
              border: new Border.all(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            child: new AnimatedBuilder(
                animation: controller,
                builder: _buildAnimation
            ),
          ),
        ),
      ),
    );
  }
}


