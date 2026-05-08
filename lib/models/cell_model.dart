class CellModel {
  final int index;
  bool isBoom;
  bool isRevealed;
  bool isFlagged;

  CellModel({
    required this.index,
    this.isBoom = false,
    this.isFlagged = false,
    this.isRevealed = false,
  });
}