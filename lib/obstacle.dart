import 'dart:ui';
import 'package:infinity/constants.dart';

class Obstacle{

  Rect obstacle1;
  Rect obstacle2;
  Color color;

  Obstacle(double rectWidth,double rectHeight,int color,double x,double y,double playerGap){
    color = color;
    
    obstacle1 = Rect.fromLTWH(0, y, rectWidth, rectHeight);
    obstacle2 = Rect.fromLTWH(rectWidth+playerGap, y, Constants.SCREEN_SIZE.width-rectWidth-playerGap, rectHeight);
  }
}