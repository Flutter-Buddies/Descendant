import 'package:bonfire/bonfire.dart';

class PlayerSpriteSheet {
  static Future<SpriteAnimation> idleRight() => SpriteAnimation.load(
        'player/knight_idle_right.png',
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 0.1,
          textureSize: Vector2(18, 34),
        ),
      );

  static SimpleDirectionAnimation playerAnimations() =>
      SimpleDirectionAnimation(
        idleLeft: SpriteAnimation.load(
          'player/knight_idle_left.png',
          SpriteAnimationData.sequenced(
            amount: 1,
            stepTime: 0.1,
            textureSize: Vector2(17, 34),
          ),
        ),
        idleDown: SpriteAnimation.load(
          'player/knight_idle_down.png',
          SpriteAnimationData.sequenced(
            amount: 1,
            stepTime: 0.1,
            textureSize: Vector2(21, 34),
          ),
        ),
        idleUp: SpriteAnimation.load(
          'player/knight_idle_up.png',
          SpriteAnimationData.sequenced(
            amount: 1,
            stepTime: 0.1,
            textureSize: Vector2(20, 34),
          ),
        ),
        idleRight: idleRight(),
        runLeft: SpriteAnimation.load(
          'player/knight_run_left.png',
          SpriteAnimationData.sequenced(
            amount: 8,
            stepTime: 0.1,
            textureSize: Vector2(18, 34),
          ),
        ),
        runDown: SpriteAnimation.load(
          'player/knight_run_down.png',
          SpriteAnimationData.sequenced(
            amount: 8,
            stepTime: 0.1,
            textureSize: Vector2(21, 34),
          ),
        ),
        runUp: SpriteAnimation.load(
          'player/knight_run_up.png',
          SpriteAnimationData.sequenced(
            amount: 8,
            stepTime: 0.1,
            textureSize: Vector2(20, 34),
          ),
        ),
        runRight: SpriteAnimation.load(
          'player/knight_run.png',
          SpriteAnimationData.sequenced(
            amount: 6,
            stepTime: 0.1,
            textureSize: Vector2(18, 34),
          ),
        ),
      );
}
