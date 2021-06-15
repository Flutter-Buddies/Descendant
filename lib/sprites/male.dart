import 'package:bonfire/bonfire.dart';

class PlayerSpriteSheet {
  static Future<SpriteAnimation> idleRight() => SpriteAnimation.load(
        'male/Idle/char_idle_right.png',
        SpriteAnimationData.sequenced(
          amount: 6,
          stepTime: 0.1,
          textureSize: Vector2(16, 16),
        ),
      );
static Future<SpriteAnimation> attackBottom() => SpriteAnimation.load(
        'male/Attack/Sword/Char_atk_down.png',
        SpriteAnimationData.sequenced(
          amount: 6,
          stepTime: 0.1,
          textureSize: Vector2(22, 23),
        ),
      );

  static Future<SpriteAnimation> attackLeft() => SpriteAnimation.load(
        'male/Attack/Sword/Char_atk_left.png',
        SpriteAnimationData.sequenced(
          amount: 6,
          stepTime: 0.1,
          textureSize: Vector2(16, 21),
        ),
      );
  static Future<SpriteAnimation> attackRight() => SpriteAnimation.load(
        'male/Attack/Sword/Char_atk_right.png',
        SpriteAnimationData.sequenced(
          amount: 6,
          stepTime: 0.1,
          textureSize: Vector2(16, 21),
        ),
      );
  static Future<SpriteAnimation> attackTop() => SpriteAnimation.load(
        'male/Attack/Sword/Char_atk_up.png',
        SpriteAnimationData.sequenced(
          amount: 6,
          stepTime: 0.1,
          textureSize: Vector2(22, 23),
        ),
      );

  static SimpleDirectionAnimation playerAnimations() =>
      SimpleDirectionAnimation(
        idleLeft: SpriteAnimation.load(
          'male/Idle/char_idle_left.png',
          SpriteAnimationData.sequenced(
            amount: 1,
            stepTime: 0.1,
            textureSize: Vector2(16, 16),
          ),
        ),
        idleDown: SpriteAnimation.load(
          'male/Idle/char_idle_down.png',
          SpriteAnimationData.sequenced(
            amount: 6,
            stepTime: 0.1,
            textureSize: Vector2(16, 16),
          ),
        ),
        idleUp: SpriteAnimation.load(
          'male/Idle/char_idle_up.png',
          SpriteAnimationData.sequenced(
            amount: 6,
            stepTime: 0.1,
            textureSize: Vector2(16, 16),
          ),
        ),
        idleRight: idleRight(),
        runLeft: SpriteAnimation.load(
          'male/Walk/char_walk_left.png',
          SpriteAnimationData.sequenced(
            amount: 6,
            stepTime: 0.1,
            textureSize: Vector2(16, 16),
          ),
        ),
        runDown: SpriteAnimation.load(
          'male/Walk/char_walk_down.png',
          SpriteAnimationData.sequenced(
            amount: 6,
            stepTime: 0.1,
            textureSize: Vector2(16, 16),
          ),
        ),
        runUp: SpriteAnimation.load(
          'male/Walk/char_walk_up.png',
          SpriteAnimationData.sequenced(
            amount: 6,
            stepTime: 0.1,
            textureSize: Vector2(16, 16),
          ),
        ),
        runRight: SpriteAnimation.load(
          'male/Walk/char_walk_right.png',
          SpriteAnimationData.sequenced(
            amount: 6,
            stepTime: 0.1,
            textureSize: Vector2(16, 16),
          ),
        ),
      );
}
