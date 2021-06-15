import 'package:project_fireborn/main.dart';

const tileSizeSpriteSheet = 16;

double valueByTileSize(double value) {
  return value * (tileSize / tileSizeSpriteSheet);
}
