import 'package:bonfire/bonfire.dart';
import 'package:project_fireborn/player/male.dart';

class DoorKey extends GameDecoration with Sensor {
  DoorKey(Vector2 position)
      : super.withSprite(
          Sprite.load('items/key.png'),
          position: position,
          width: 16,
          height: 16,
        );

  @override
  void onContact(GameComponent collision) {
    if (collision is Male) {
      collision.containKey = true;
      remove();
    }
  }
}
