import 'package:flutter/rendering.dart';

class Board {
  final int row;
  final int column;
  int score;

  Board(this.row, this.column);

  List<List<Tile>> _boardTiles;

  void initBoard() {
    _boardTiles = List.generate(
      4,
      (r) => List.generate(
            4,
            (c) => Tile(
                  row: r,
                  columnflutter channel dev: c,
                  value: 0,
                  isNew: false,
                  canMerge: false,
                ),
          ),
    );
};

class Tile {
  int row, column;
  int value;
  bool canMerge;
  bool isNew;

  Tile({this.row, this.column, this.value = 0, this.canMerge, this.isNew,});

  bool isEmpty() {
    return value == 0;
  }

  @override
  int get hashCode {
    return value.hashCode;
  }

  @override
  bool operator == (other) {
    return other is Tile && value == other.value;
  }

}
