import 'dart:async' as async;
import 'package:bonfire/bonfire.dart';
import 'package:project_fireborn/game.dart';
import 'package:project_fireborn/sprites/male.dart';
import 'package:flutter/material.dart';
import 'package:project_fireborn/util/custom_sprite_animation_widget.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  bool showSplash = true;
  int currentPosition = 0;
  late async.Timer _timer;
  List<Future<SpriteAnimation>> sprites = [
    PlayerSpriteSheet.idleRight(),
  ];

  @override
  void dispose() {
    // Sounds.stopBackgroundSound();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: Duration(milliseconds: 300),
      child: buildMenu(),
    );
  }

  Widget buildMenu() {
    startTimer();
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              "Project Fireborn",
              style: TextStyle(
                  color: Colors.white, fontFamily: 'Normal', fontSize: 30.0),
            ),
            SizedBox(
              height: 34.0,
            ),
            if (sprites.isNotEmpty)
              SizedBox(
                height: 100,
                width: 100,
                child: CustomSpriteAnimationWidget(
                  animation: sprites[currentPosition],
                ),
              ),
            SizedBox(
              height: 34.0,
            ),
            SizedBox(
              width: 150,
              child: ElevatedButton(
                child: Text(
                  "Um...go?",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Normal',
                    fontSize: 17.0,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Game()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void startTimer() {
    _timer = async.Timer.periodic(Duration(seconds: 2), (timer) {
      setState(() {
        currentPosition++;
        if (currentPosition > sprites.length - 1) {
          currentPosition = 0;
        }
      });
      // print(currentPosition);
    });
  }
}
