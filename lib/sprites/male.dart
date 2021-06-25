import 'package:bonfire/bonfire.dart';
import 'package:flame/image_composition.dart';

class PlayerSpriteSheet {
  static Future<SpriteAnimation> blank = _getAnimation("");

  static Future<SpriteAnimation> attackLeft() => _getAnimation(
        "attackLeft",
        speed: 0.05,
      );
  static Future<SpriteAnimation> attackRight() => _getAnimation(
        "attackRight",
        speed: 0.05,
      );
  static Future<SpriteAnimation> attackUp() => _getAnimation(
        "attackUp",
        speed: 0.05,
      );
  static Future<SpriteAnimation> attackDown() => _getAnimation(
        "attackDown",
        speed: 0.05,
      );

  static Future<SpriteAnimation> idleDown = _getAnimation("idleDown");
  static Future<SpriteAnimation> idleUp = _getAnimation("idleUp");
  static Future<SpriteAnimation> idleLeft = _getAnimation("idleLeft");
  static Future<SpriteAnimation> idleRight = _getAnimation("idleRight");

  static Future<SpriteAnimation> runDown = _getAnimation("runDown");
  static Future<SpriteAnimation> runUp = _getAnimation("runUp");
  static Future<SpriteAnimation> runLeft = _getAnimation("runLeft");
  static Future<SpriteAnimation> runRight = _getAnimation("runRight");

  static Future<SpriteAnimation> idleShieldDown() =>
      _getAnimation("idleShieldDown");
  static Future<SpriteAnimation> idleShieldUp() =>
      _getAnimation("idleShieldUp");
  static Future<SpriteAnimation> idleShieldLeft() =>
      _getAnimation("idleShieldLeft");
  static Future<SpriteAnimation> idleShieldRight() =>
      _getAnimation("idleShieldRight");

  static Future<SpriteAnimation> runShieldDown() =>
      _getAnimation("runShieldDown");
  static Future<SpriteAnimation> runShieldUp() => _getAnimation("runShieldUp");
  static Future<SpriteAnimation> runShieldLeft() =>
      _getAnimation("runShieldLeft");
  static Future<SpriteAnimation> runShieldRight() =>
      _getAnimation("runShieldRight");


  static SimpleDirectionAnimation playerAnimations() =>
      SimpleDirectionAnimation(
        idleLeft: idleLeft,
        idleDown: idleDown,
        idleUp: idleUp,
        idleRight: idleRight,
        runLeft: runLeft,
        runDown: runDown,
        runUp: runUp,
        runRight: runRight,
        others: {
          'idleShieldDown':idleShieldDown(),
          'idleShieldUp':idleShieldUp(),
          'idleShieldLeft':idleShieldLeft(),
          'idleShieldRight':idleShieldRight(),
        }
      );
}

Future<SpriteAnimation> _getAnimation(String animation,
    {double speed = 0.1}) async {
  Image spriteSheetPlayer = await Flame.images.load('male/male_game.png');

  switch (animation) {
    case "idleDown":
      return spriteSheetPlayer.getAnimation(
        width: 40,
        height: 40,
        count: 6,
        stepTime: speed,
      );
    case "idleUp":
      return spriteSheetPlayer.getAnimation(
        startDy: 40,
        width: 40,
        height: 40,
        count: 6,
        stepTime: speed,
      );
    case "idleLeft":
      return spriteSheetPlayer.getAnimation(
        startDy: 80,
        width: 40,
        height: 40,
        count: 6,
        stepTime: speed,
      );
    case "idleRight":
      return spriteSheetPlayer.getAnimation(
        startDy: 120,
        width: 40,
        height: 40,
        count: 6,
        stepTime: speed,
      );
    case "runDown":
      return spriteSheetPlayer.getAnimation(
        startDy: 160,
        width: 40,
        height: 40,
        count: 6,
        stepTime: speed,
      );
    case "runUp":
      return spriteSheetPlayer.getAnimation(
        startDy: 200,
        width: 40,
        height: 40,
        count: 6,
        stepTime: speed,
      );
    case "runLeft":
      return spriteSheetPlayer.getAnimation(
        startDy: 240,
        width: 40,
        height: 40,
        count: 6,
        stepTime: speed,
      );
    case "runRight":
      return spriteSheetPlayer.getAnimation(
        startDy: 280,
        width: 40,
        height: 40,
        count: 6,
        stepTime: speed,
      );
    case "attackDown":
      return spriteSheetPlayer.getAnimation(
        startDy: 320,
        width: 40,
        height: 40,
        count: 6,
        stepTime: speed,
      );
    case "attackUp":
      return spriteSheetPlayer.getAnimation(
        startDy: 360,
        width: 40,
        height: 40,
        count: 6,
        stepTime: speed,
      );
    case "attackLeft":
      return spriteSheetPlayer.getAnimation(
        startDy: 400,
        width: 40,
        height: 40,
        count: 6,
        stepTime: speed,
      );
    case "attackRight":
      return spriteSheetPlayer.getAnimation(
        startDy: 440,
        width: 40,
        height: 40,
        count: 6,
        stepTime: speed,
      );
    case "idleShieldDown":
      return spriteSheetPlayer.getAnimation(
        startDy: 480,
        width: 40,
        height: 40,
        count: 6,
        stepTime: 0.25,
      );
    case "idleShieldUp":
      return spriteSheetPlayer.getAnimation(
        startDy: 520,
        width: 40,
        height: 40,
        count: 6,
        stepTime: 0.25,
      );
    case "idleShieldLeft":
      return spriteSheetPlayer.getAnimation(
        startDy: 560,
        width: 40,
        height: 40,
        count: 6,
        stepTime: 0.25,
      );
    case "idleShieldRight":
      return spriteSheetPlayer.getAnimation(
        startDy: 600,
        width: 40,
        height: 40,
        count: 6,
        stepTime: 0.25,
      );
    case "runShieldDown":
      return spriteSheetPlayer.getAnimation(
        startDy: 640,
        width: 40,
        height: 40,
        count: 6,
        stepTime: 0.25,
      );
    case "runShieldUp":
      return spriteSheetPlayer.getAnimation(
        startDy: 680,
        width: 40,
        height: 40,
        count: 6,
        stepTime: 0.25,
      );
    case "runShieldLeft":
      return spriteSheetPlayer.getAnimation(
        startDy: 720,
        width: 40,
        height: 40,
        count: 6,
        stepTime: 0.25,
      );
    case "runShieldRight":
      return spriteSheetPlayer.getAnimation(
        startDy: 760,
        width: 40,
        height: 40,
        count: 6,
        stepTime: 0.25,
      );
    default:
      return spriteSheetPlayer.getAnimation(width: 0, height: 0, count: 6);
  }
}
