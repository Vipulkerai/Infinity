import 'dart:math';
import 'dart:ui';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/gestures.dart';
import 'package:infinity/player.dart';
import 'package:infinity/constants.dart';

class GamePanel extends Game {

  Player player;
  Random rnd;

  GamePanel() {
    initialize();
  }

  void initialize() async {
    player = new Player(Rect.fromLTWH((Constants.SCREEN_SIZE.width/2) - 25, 3*(Constants.SCREEN_SIZE.height/4), 50, 50),Color(0xff576574));
    rnd = Random();
    resize(await Flame.util.initialDimensions());
  }

  void render(Canvas canvas) {
    Rect bgRect = Rect.fromLTWH(0, 0, Constants.SCREEN_SIZE.width, Constants.SCREEN_SIZE.height);
    Paint bgPaint = Paint();
    bgPaint.color = Color(0xff576574);
    canvas.drawRect(bgRect, bgPaint);

    player.render(canvas);
  }

  void update(double t) {
    player.update(t);
  }

  void resize(Size size) {
    Constants.SCREEN_SIZE = size;
  }

  void onTapDown(TapDownDetails d) {
    
  }
}