import 'package:equatable/equatable.dart';
import 'package:puzzle_app/nextpuzzle/pos.dart';

class Tile extends Equatable{
  final int value;
  final Position position;
  final Position correctPosition;

  const Tile({
    required this.value,
    required this.position,
    required this.correctPosition
});

  Tile move(Position newposition) {
    return Tile(
      value: value,
      correctPosition: correctPosition,
      position: newposition
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
    position,
    correctPosition
  ];

}