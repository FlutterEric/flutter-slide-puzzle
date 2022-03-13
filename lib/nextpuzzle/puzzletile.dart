import 'package:flutter/material.dart';
import 'package:flutter_sequence_animation/flutter_sequence_animation.dart';
import 'package:puzzle_app/nextpuzzle/tilw.dart';


class PuzzleTile extends StatefulWidget {

  final Tile tile;
  final double size;
  final VoidCallback onTap;

  PuzzleTile({
    Key? key,
    required this.tile,
    required this.size,
    required this.onTap
  }) : super(key: key);

  @override
  _PuzzleTileState createState() => _PuzzleTileState();
}

class _PuzzleTileState extends State<PuzzleTile> with SingleTickerProviderStateMixin {

  late AnimationController animationController;
  late SequenceAnimation sequenceAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationController = AnimationController(
      vsync: this
    );

    sequenceAnimation = SequenceAnimationBuilder()
        .addAnimatable(
        animatable: Tween<double>(
            begin: (widget.tile.position.x - 1) * widget.size,
            end: (widget.tile.position.x - 1) * widget.size
        ),
      from: const Duration(
          seconds: 1
      ),
      to: const Duration(
        seconds: 2
      ),
      curve: Curves.ease,
      tag: "left"
    ).addAnimatable(
        animatable: Tween<double>(
            begin: (widget.tile.position.y - 1) * widget.size,
            end: (widget.tile.position.y - 1) * widget.size
        ),
        from: const Duration(
          seconds: 1
        ),
        to: const Duration(
            seconds: 2
        ),
        curve: Curves.ease,
        tag: "top"
    ).addAnimatable(
        animatable: Tween<EdgeInsets>(
            begin: const EdgeInsets.only(bottom: 0.0),
            end: const EdgeInsets.only(bottom: 50)
        ),
        from: Duration.zero,
        to: const Duration(
            seconds: 1
        ),
        curve: Curves.ease,
        tag: "bottom"
    ).animate(animationController);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
        duration: const Duration(
            seconds: 1
        ),
        left: (widget.tile.position.x - 1) * widget.size,
        top: (widget.tile.position.y - 1) * widget.size,
        child: GestureDetector(
          onTap: widget.onTap,
          child: Container(
            color: Colors.white,
            margin: const EdgeInsets.all(1),
            width: widget.size - 2,
            height: widget.size - 2,
            alignment: Alignment.center,
            child: Text(
                widget.tile.value.toString()
            ),
          ),
        )
    );
  }
}





/*
class PuzzleTile extends S {
  final Tile tile;
  final double size;
  final VoidCallback onTap;
  const PuzzleTile({
    Key? key,
    required this.tile,
    required this.size,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(
        seconds: 1
      ),
      left: (tile.position.x - 1) * size,
      top: (tile.position.y - 1) * size,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          color: Colors.white,
          margin: const EdgeInsets.all(1),
          width: size - 2,
          height: size - 2,
          alignment: Alignment.center,
          child: Text(
              tile.value.toString()
          ),
        ),
      )
    );
  }
}
 */
