import 'package:flame/flame.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project_fireborn/menu.dart';

late double tileSize;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb) {
    await Flame.device.setLandscape();
    await Flame.device.fullScreen();
  }
  // await Sounds.initialize();
  runApp(
    const MaterialApp(
      home: Menu(),
    ),
  );
}
