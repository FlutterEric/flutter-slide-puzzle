import 'package:equatable/equatable.dart';
import 'package:puzzle_app/nextpuzzle/pos.dart';
import 'package:puzzle_app/nextpuzzle/tilw.dart';

class Puzzle extends Equatable{

 final List<Tile> tiles;
 final Position emptyPosition;

  const Puzzle._({
   required this.tiles,
    required this.emptyPosition
});

 bool canMove(Position tilePosition) {
   if (tilePosition.x == emptyPosition.x || tilePosition.y == emptyPosition.y) {
     return true;
   }
   return false;
 }

 /// moves one or more tile vertically or horizontally
 Puzzle move(Tile tile) {
   final copy = [...tiles];
   // left or right
   if (tile.position.y == emptyPosition.y) {
     final row = tiles.where(
           (e) => e.position.y == emptyPosition.y,
     );

     // right
     if (tile.position.x < emptyPosition.x) {
       for (final e in row) {
         if (e.position.x < tile.position.x || e.position.x > emptyPosition.x) {
           continue;
         }
         copy[e.value - 1] = e.move(
           Position(
             x: e.position.x + 1,
             y: e.position.y,
           ),
         );
       }
     } else {
       // left
       for (final e in row) {
         if (e.position.x > tile.position.x || e.position.x < emptyPosition.x) {
           continue;
         }
         copy[e.value - 1] = e.move(
           Position(
             x: e.position.x - 1,
             y: e.position.y,
           ),
         );
       }
     }
   } else {
     // top or bottom
     final column = tiles.where(
           (e) => e.position.x == emptyPosition.x,
     );

     // bottom
     if (tile.position.y < emptyPosition.y) {
       for (final e in column) {
         if (e.position.y > emptyPosition.y || e.position.y < tile.position.y) {
           continue;
         }
         copy[e.value - 1] = e.move(
           Position(
             x: e.position.x,
             y: e.position.y + 1,
           ),
         );
       }
     } else {
       // top
       for (final e in column) {
         if (e.position.y < emptyPosition.y || e.position.y > tile.position.y) {
           continue;
         }
         copy[e.value - 1] = e.move(
           Position(
             x: e.position.x,
             y: e.position.y - 1,
           ),
         );
       }
     }
   }
   return Puzzle._(
     tiles: copy,
     emptyPosition: tile.position,
   );
 }

  factory Puzzle.create(int crossAxisCount){
    int value = 1;

    final tiles = <Tile>[];
    final emptyPosition = Position(
      x: crossAxisCount,
      y: crossAxisCount,
    );
    for(int y = 1; y <= crossAxisCount; y++){
      for (int x = 1; x <= crossAxisCount; x++){
        final add = !(x == crossAxisCount && y == crossAxisCount);
        if(add){
          final position = Position(x: x, y: y);
          final tile = Tile(
              value: value,
              position: position,
              correctPosition: position
          );
          tiles.add(tile);
          value++;
        }
      }
    }

    return Puzzle._(
      tiles: tiles,
      emptyPosition: emptyPosition
    );
  }

  @override
  List<Object?> get props => [
    tiles,
    emptyPosition
  ];

}