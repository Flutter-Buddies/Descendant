import 'package:bonfire/bonfire.dart';
import 'package:flame/image_composition.dart';

class PlayerSpriteSheet {
  static Future<SpriteAnimation> blank = _getAnimation("");

  static Future<SpriteAnimation> attackLeft = _getAnimation("attackLeft");
  static Future<SpriteAnimation> attackRight = _getAnimation("attackRight");
  static Future<SpriteAnimation> attackUp = _getAnimation("attackUp");
  static Future<SpriteAnimation> attackDown = _getAnimation("attackDown");

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

Future<SpriteAnimation> _getAnimation(String animation) async {
  Image spriteSheetPlayer = await Flame.images.load('male/male_game.png');

  switch (animation) {
    case "idleDown":
      return spriteSheetPlayer.getAnimation(
        width: 40,
        height: 40,
        count: 6,
        stepTime: 0.1,
      );
    case "idleUp":
      return spriteSheetPlayer.getAnimation(
        startDy: 40,
        width: 40,
        height: 40,
        count: 6,
        stepTime: 0.1,
      );
    case "idleLeft":
      return spriteSheetPlayer.getAnimation(
        startDy: 80,
        width: 40,
        height: 40,
        count: 6,
        stepTime: 0.1,
      );
    case "idleRight":
      return spriteSheetPlayer.getAnimation(
        startDy: 120,
        width: 40,
        height: 40,
        count: 6,
        stepTime: 0.1,
      );
    case "runDown":
      return spriteSheetPlayer.getAnimation(
        startDy: 160,
        width: 40,
        height: 40,
        count: 6,
        stepTime: 0.1,
      );
    case "runUp":
      return spriteSheetPlayer.getAnimation(
        startDy: 200,
        width: 40,
        height: 40,
        count: 6,
        stepTime: 0.1,
      );
    case "runLeft":
      return spriteSheetPlayer.getAnimation(
        startDy: 240,
        width: 40,
        height: 40,
        count: 6,
        stepTime: 0.1,
      );
    case "runRight":
      return spriteSheetPlayer.getAnimation(
        startDy: 280,
        width: 40,
        height: 40,
        count: 6,
        stepTime: 0.1,
      );
    case "attackDown":
      return spriteSheetPlayer.getAnimation(
        startDy: 320,
        width: 40,
        height: 40,
        count: 6,
        stepTime: 0.1,
      );
    case "attackUp":
      return spriteSheetPlayer.getAnimation(
        startDy: 360,
        width: 40,
        height: 40,
        count: 6,
        stepTime: 0.1,
      );
    case "attackLeft":
      return spriteSheetPlayer.getAnimation(
        startDy: 400,
        width: 40,
        height: 40,
        count: 6,
        stepTime: 0.1,
      );
    case "attackRight":
      return spriteSheetPlayer.getAnimation(
        startDy: 440,
        width: 40,
        height: 40,
        count: 6,
        stepTime: 0.1,
      );
    default:
      return spriteSheetPlayer.getAnimation(width: 0, height: 0, count: 6);
  }
}
