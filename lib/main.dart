import 'package:flame/util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:infinity/gamePanel.dart';

void main() async {
  Util flameUtil = Util();
  await flameUtil.fullScreen();
  await flameUtil.setOrientation(DeviceOrientation.portraitUp);

  GamePanel gamePanel = GamePanel();
  runApp(gamePanel.widget);

  TapGestureRecognizer tapper = TapGestureRecognizer();
  tapper.onTapDown = gamePanel.onTapDown;
  flameUtil.addGestureRecognizer(tapper);
}