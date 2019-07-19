import 'dart:math';
import 'dart:ui';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/gestures.dart';
import 'package:infinity/player.dart';

class GamePanel extends Game {
  Size screenSize;
  double tileSize;
  List<Player> players;
  Random rnd;

  GamePanel() {
    initialize();
  }

  void initialize() async {
    players = List<Player>();
    rnd = Random();
    resize(await Flame.util.initialDimensions());

    spawnPlayer();
  }

  void spawnPlayer() {
    //double x = rnd.nextDouble() * (screenSize.width - tileSize);
    //double y = rnd.nextDouble() * (screenSize.height - tileSize);

    Rect rectPlayer = Rect.fromLTWH(screenSize.width/2, screenSize.height/2, 50, 50);

    players.add(Player(rectPlayer, Color(0xff576574)));
  }

  void render(Canvas canvas) {
    Rect bgRect = Rect.fromLTWH(0, 0, screenSize.width, screenSize.height);
    Paint bgPaint = Paint();
    bgPaint.color = Color(0xff576574);
    canvas.drawRect(bgRect, bgPaint);

    players.forEach((Player player) => player.render(canvas));
  }

  void update(double t) {
    players.forEach((Player player) => player.update(t));
    //players.removeWhere((Player player) => player.isOffScreen);
  }

  void resize(Size size) {
    screenSize = size;
    //tileSize = screenSize.width / 9;
  }

  void onTapDown(TapDownDetails d) {
    players.forEach((Player player) {
      });
  }
}