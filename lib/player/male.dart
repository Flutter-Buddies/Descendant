// import 'dart:async' as async;

import 'package:bonfire/bonfire.dart';
import 'package:project_fireborn/main.dart';
// import 'package:project_fireborn/util/functions.dart';
// import 'package:project_fireborn/util/game_sprite_sheet.dart';
import 'package:flutter/material.dart';
import 'package:project_fireborn/sprites/male.dart';
import 'package:project_fireborn/util/functions.dart';

class Male extends SimplePlayer with Lighting, ObjectCollision {
  final Vector2 initPosition;
  double attack = 25;
  double stamina = 100;
  double initSpeed = tileSize / 0.25;
  // late async.Timer _timerStam
  bool containKey = false;
  bool showObserveEnemy = false;
  bool isBlocking = false;

  Male({
    required this.initPosition,
  }) : super(
          animation: PlayerSpriteSheet.playerAnimations(),
          width: valueByTileSize(40),
          height: valueByTileSize(40),
          position: initPosition,
          life: 200,
          speed: tileSize / 0.25,
        ) {
    // print(height);
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea.rectangle(
            size: Size(valueByTileSize(8), valueByTileSize(8)),
            align: Vector2(
              valueByTileSize(16),
              valueByTileSize(20),
            ),
          ),
        ],
      ),
    );

    setupLighting(
      LightingConfig(
        radius: width,
        blurBorder: width,
        color: Colors.deepOrangeAccent.withOpacity(0.2),
      ),
    );
  }

  @override
  void update(double dt) async {
    late SpriteAnimation newAnimation;
    if (isBlocking) {
      switch (lastDirection) {
        case Direction.left:
          newAnimation = await PlayerSpriteSheet.idleShieldLeft();
          break;
        case Direction.right:
          newAnimation = await PlayerSpriteSheet.idleShieldRight();
          break;
        case Direction.up:
          newAnimation = await PlayerSpriteSheet.idleShieldUp();
          break;
        case Direction.down:
          newAnimation = await PlayerSpriteSheet.idleShieldDown();
          break;
        case Direction.upLeft:
          newAnimation = await PlayerSpriteSheet.idleShieldLeft();
          break;
        case Direction.upRight:
          newAnimation = await PlayerSpriteSheet.idleShieldRight();
          break;
        case Direction.downLeft:
          newAnimation = await PlayerSpriteSheet.idleShieldLeft();
          break;
        case Direction.downRight:
          newAnimation = await PlayerSpriteSheet.idleShieldRight();
          break;
      }
    }
    animation.current = newAnimation;
    super.update(dt);
  }

  @override
  void joystickChangeDirectional(JoystickDirectionalEvent event) {
    this.speed = initSpeed * event.intensity;
    super.joystickChangeDirectional(event);
  }

  @override
  void joystickAction(JoystickActionEvent event) {
    if (event.id == 0 && event.event == ActionEvent.DOWN) {
      _addAttackAnimation();
    }

    if (event.id == 1 && event.event == ActionEvent.DOWN) {
        isBlocking = true;
    }

    if (event.id == 1 && event.event == ActionEvent.UP) {
      isBlocking = false;
    }

    super.joystickAction(event);
  }

  void _addAttackAnimation() async {
    if (stamina < 15) {
      return;
    }

    Future<SpriteAnimation> newAnimation;

    switch (lastDirection) {
      case Direction.left:
        newAnimation = PlayerSpriteSheet.attackLeft();
        break;
      case Direction.right:
        newAnimation = PlayerSpriteSheet.attackRight();
        break;
      case Direction.up:
        newAnimation = PlayerSpriteSheet.attackUp();
        break;
      case Direction.down:
        newAnimation = PlayerSpriteSheet.attackDown();
        break;
      case Direction.upLeft:
        newAnimation = PlayerSpriteSheet.attackLeft();
        break;
      case Direction.upRight:
        newAnimation = PlayerSpriteSheet.attackRight();
        break;
      case Direction.downLeft:
        newAnimation = PlayerSpriteSheet.attackLeft();
        break;
      case Direction.downRight:
        newAnimation = PlayerSpriteSheet.attackRight();
        break;
    }

    animation.playOnce(newAnimation, position);
    actionAttack();
  }

  void actionAttack() {
    this.simpleAttackMelee(
      damage: attack,
      height: tileSize,
      width: tileSize,
    );
  }

  // void actionAttackRange() {
  //   if (stamina < 10) {
  //     return;
  //   }

  // Sounds.attackRange();

  // decrementStamina(10);
  // this.simpleAttackRange(
  //   animationRight: GameSpriteSheet.fireBallAttackRight(),
  //   animationLeft: GameSpriteSheet.fireBallAttackLeft(),
  //   animationTop: GameSpriteSheet.fireBallAttackTop(),
  //   animationBottom: GameSpriteSheet.fireBallAttackBottom(),
  //   animationDestroy: GameSpriteSheet.fireBallExplosion(),
  //   width: tileSize * 0.65,
  //   height: tileSize * 0.65,
  //   damage: 10,
  //   speed: initSpeed * (tileSize / 32),
  //   destroy: () {
  //     Sounds.explosion();
  //   },
  //   collision: CollisionConfig(
  //     collisions: [
  //       CollisionArea.rectangle(size: Size(tileSize / 2, tileSize / 2)),
  //     ],
  //   ),
  //   lightingConfig: LightingConfig(
  //     radius: tileSize * 0.9,
  //     blurBorder: tileSize / 2,
  //     color: Colors.deepOrangeAccent.withOpacity(0.4),
  //   ),
  // );
}

// void _verifyStamina() {
//   _timerStamina = async.Timer(Duration(milliseconds: 150), () {});

//   stamina += 2;
//   if (stamina > 100) {
//     stamina = 100;
//   }
// }

// void decrementStamina(int i) {
//   stamina -= i;
//   if (stamina < 0) {
//     stamina = 0;
//   }
// }


// void _showEmote({String emote = 'emote/emote_exclamacao.png'}) {
//   gameRef.add(
//     AnimatedFollowerObject(
//       animation: SpriteAnimation.load(
//         emote,
//         SpriteAnimationData.sequenced(
//           amount: 8,
//           stepTime: 0.1,
//           textureSize: Vector2(32, 32),
//         ),
//       ),
//       target: this,
//       positionFromTarget: Rect.fromLTWH(
//         18,
//         -6,
//         tileSize / 2,
//         tileSize / 2,
//       ).toVector2Rect(),
//     ),
//   );
// }
// }
