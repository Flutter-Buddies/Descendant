import 'package:bonfire/bonfire.dart';
import 'package:project_fireborn/main.dart';
import 'package:project_fireborn/player/male.dart';

class DoorKey extends GameDecoration with Sensor {
  DoorKey(Vector2 position)
      : super.withSprite(
          Sprite.load('items/key.png'),
          position: position,
          width: tileSize,
          height: tileSize,
        );

  @override
  void onContact(GameComponent collision) {
    if (collision is Male) {
      collision.containKey = true;
      remove();
    }
  }
}
