import 'package:flutter/material.dart';

class mq {
  static double width;
  static double height;

  void init(BuildContext context){
    final MediaQueryData _mediaQueryData = MediaQuery.of(context);
    width = _mediaQueryData.size.width;
    height = _mediaQueryData.size.height;
  }
}