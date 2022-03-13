
import 'package:flutter/foundation.dart';
import 'package:puzzle_app/nextpuzzle/gamestate.dart';
import 'package:puzzle_app/nextpuzzle/puzzle.dart';
import 'package:puzzle_app/nextpuzzle/tilw.dart';

class GameController extends ChangeNotifier{
  GameState _state = GameState(
    crossAxisCount: 4,
    puzzle: Puzzle.create(4),
    solved: false,
    moves: 0,
  );

  GameState get state => _state;

  Puzzle get puzzle => _state.puzzle;

  void onTileTapped(Tile tile){
    final can = state.puzzle.canMove(tile.position);
    if(can){
      _state = state.copyWith(
        puzzle: state.puzzle.move(tile)
      );
      notifyListeners();
    }
  }
}