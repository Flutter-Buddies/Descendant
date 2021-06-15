import 'dart:math';

import 'package:bonfire/bonfire.dart';
import 'package:project_fireborn/interface/player_interface.dart';
// import 'package:project_fireborn/items/key.dart';
import 'package:project_fireborn/main.dart';
import 'package:project_fireborn/player/male.dart';
import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  const Game({Key? key}) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game>
    with WidgetsBindingObserver
    implements GameListener {
  bool showGameOver = false;

  late GameController _controller;

  @override
  void initState() {
    WidgetsBinding.instance!.addObserver(this);
    _controller = GameController()..setListener(this);
    // Sounds.playBackgroundSound();
    super.initState();
  }

  // @override
  // void didChangeAppLifecycleState(AppLifecycleState state) {
  //   print(state);
  //   switch (state) {
  //     case AppLifecycleState.resumed:
  //       Sounds.resumeBackgroundSound();
  //       break;
  //     case AppLifecycleState.inactive:
  //       break;
  //     case AppLifecycleState.paused:
  //       Sounds.pauseBackgroundSound();
  //       break;
  //     case AppLifecycleState.detached:
  //       Sounds.stopBackgroundSound();
  //       break;
  //   }
  // }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    // Sounds.stopBackgroundSound();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size sizeScreen = MediaQuery.of(context).size;
    tileSize = max(sizeScreen.height, sizeScreen.width) / 16;

    return Material(
      color: Colors.transparent,
      child: BonfireTiledWidget(
        gameController: _controller,
        joystick: Joystick(
          directional: JoystickDirectional(
            spriteBackgroundDirectional: Sprite.load('joystick_background.png'),
            spriteKnobDirectional: Sprite.load('joystick_knob.png'),
            size: 100,
            isFixed: false,
          ),
          actions: [
            JoystickAction(
              actionId: 0,
              sprite: Sprite.load('joystick_attack.png'),
              spritePressed: Sprite.load('joystick_attack_selected.png'),
              size: 80,
              margin: EdgeInsets.only(bottom: 50, right: 50),
            ),
            // JoystickAction(
            //   actionId: 1,
            //   sprite: Sprite.load('joystick_attack_range.png'),
            //   spritePressed: Sprite.load('joystick_attack_range_selected.png'),
            //   size: 50,
            //   margin: EdgeInsets.only(bottom: 50, right: 160),
            // )
          ],
        ),
        player: Male(
          initPosition: Vector2(2 * tileSize, 3 * tileSize),
        ),
        map: TiledWorldMap(
          'tiled/map.json',
          forceTileSize: Size(tileSize, tileSize),
          // objectsBuilder: {
          // 'door': (p) => Door(p.position, p.size),
          // 'torch': (p) => Torch(p.position),
          // 'potion': (p) => PotionLife(p.position, 30),
          // 'wizard': (p) => WizardNPC(p.position),
          // 'spikes': (p) => Spikes(p.position),
          // 'key': (p) => DoorKey(p.position),
          // 'kid': (p) => Kid(p.position),
          // 'boss': (p) => Boss(p.position),
          // 'goblin': (p) => Goblin(p.position),
          // 'imp': (p) => Imp(p.position),
          // 'mini_boss': (p) => MiniBoss(p.position),
          // 'torch_empty': (p) => Torch(p.position, empty: true),
          // },
        ),
        interface: PlayerInterface(),
        lightingColorGame: Colors.black.withOpacity(0.6),
        background: BackgroundColorGame(Colors.grey),
        progress: Center(
          child: Text(
            "Loading...",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Normal',
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }

  // void _showDialogGameOver() {
  //   setState(() {
  //     showGameOver = true;
  //   });
  //   Dialogs.showGameOver(
  //     context,
  //     () {
  //       Navigator.of(context).pushAndRemoveUntil(
  //         MaterialPageRoute(builder: (context) => Game()),
  //         (Route<dynamic> route) => false,
  //       );
  //     },
  //   );
  // }

  @override
  void changeCountLiveEnemies(int count) {}

  @override
  void updateGame() {
    if (_controller.player != null && _controller.player!.isDead) {
      // if (!showGameOver) {
      //   showGameOver = true;
      //   _showDialogGameOver();
      // }
    }
  }
}
