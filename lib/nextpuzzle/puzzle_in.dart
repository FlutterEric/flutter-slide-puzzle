
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:puzzle_app/nextpuzzle/game_controller.dart';
import 'package:puzzle_app/nextpuzzle/puzzletile.dart';


class PuzzleInteractor extends StatefulWidget {
  const PuzzleInteractor({Key? key}) : super(key: key);

  @override
  _PuzzleInteractorState createState() => _PuzzleInteractorState();
}

class _PuzzleInteractorState extends State<PuzzleInteractor> {

  late AnimationController animationController;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: LayoutBuilder(
        builder: (context, constraints){
          final controller = context.watch<GameController>();
          final state = controller.state;
          final tileSize = constraints.maxWidth / state.crossAxisCount;

          return Stack(
            children: state.puzzle.tiles
                .map(
                  (e) => PuzzleTile(
                tile: e,
                size: tileSize,
                onTap: () => controller.onTileTapped(e)
              ),
            )
                .toList(),
          );
        },
      ),
    );
  }
}




/*
class PuzzleInteractor extends StatelessWidget {
  const PuzzleInteractor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: LayoutBuilder(
        builder: (context, constraints){
          final controller = context.watch<GameController>();
          final state = controller.state;
          final tileSize = constraints.maxWidth / state.crossAxisCount;

          return Stack(
            children: state.puzzle.tiles
                .map(
                  (e) => PuzzleTile(
                tile: e,
                size: tileSize,
                onTap: () {
                  controller.onTileTapped(e);
                },
              ),
            )
                .toList(),
          );
        },
      ),
    );
  }
}
 */



