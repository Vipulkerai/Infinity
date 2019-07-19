import 'dart:ui';
import 'package:flutter/gestures.dart';

class Player {
  Rect player;
  Color color;

  Player(Rect p,Color c){
    this.player = p;
    this.color = c;
  }

  void render(Canvas canvas){
    Paint playerPaint = Paint();
    playerPaint.color = color;

    canvas.drawRect(this.player, playerPaint);
  }

  void update(double t) {

  }

  void updatePosition(TapDownDetails d){
    //this.player = player.translate(d.globalPosition.dx + 25 , d.globalPosition.dx + 25);
  }

//  void setPlayer(x,y){
//
//  }
}