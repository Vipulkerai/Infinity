import 'dart:ui';
import 'package:flutter/gestures.dart';

class Player {
  Rect player;
  Color color;

  Player(Rect p,Color c){
    player = p;
    color = c;
  }

  void render(Canvas canvas){
    Paint playerPaint = Paint();
    playerPaint.color = color;

    canvas.drawRect(player, playerPaint);
  }

  void update(double t) {

  }

  void updatePosition(TapDownDetails d){
    player = player.translate(d.globalPosition.dx, d.globalPosition.dx);
  }

//  void setPlayer(x,y){
//
//  }

}