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
    default:
      return spriteSheetPlayer.getAnimation(width: 0, height: 0, count: 6);
  }
}
