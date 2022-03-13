import 'package:equatable/equatable.dart';
import 'package:puzzle_app/nextpuzzle/puzzle.dart';

class GameState extends Equatable{
  final int crossAxisCount;
  final Puzzle puzzle;
  final bool solved;
  final int moves;

  const GameState({
    required this.crossAxisCount,
    required this.puzzle,
    required this.solved,
    required this.moves,
  });

  GameState copyWith({
    int? crossAxisCount,
    Puzzle? puzzle,
    int? moves,
    bool? solved,
  }) {
    return GameState(
      crossAxisCount: crossAxisCount ?? this.crossAxisCount,
      moves: moves ?? this.moves,
      puzzle: puzzle ?? this.puzzle,
      solved: solved ?? this.solved,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
    moves,
    crossAxisCount,
    solved,
    puzzle,
  ];
}