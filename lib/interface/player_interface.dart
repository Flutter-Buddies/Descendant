import 'dart:ui';

import 'package:bonfire/bonfire.dart';
// import 'package:project_fireborn/interface/bar_life_component.dart';
// import 'package:project_fireborn/player/knight.dart';
// import 'package:flame/sprite.dart';
import 'package:flutter/material.dart';
import 'package:project_fireborn/player/male.dart';

class PlayerInterface extends GameInterface {
  late Sprite key;
  PlayerInterface();

  @override
  Future<void> onLoad() async {
    key = await Sprite.load('items/key.png');
    // add(BarLifeComponent());
    return super.onLoad();
  }

  @override
  void render(Canvas c) {
    _drawKey(c);
    super.render(c);
  }

  void _drawKey(Canvas c) {
    if (gameRef.player != null && (gameRef.player as Male).containKey) {
      key.renderFromVector2Rect(
          c, const Rect.fromLTWH(150, 20, 35, 30).toVector2Rect());
    }
  }
}
