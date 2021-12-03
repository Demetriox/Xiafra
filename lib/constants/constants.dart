import 'package:flutter/cupertino.dart';

class Layout {
  Color backgroundColor = const Color(0xff000000);
  Color backgroundFontColor = const Color(0xff000000);
  Layout  (String carrera) {
    switch(carrera) {
      case "ISC": {
        backgroundColor = const Color(0xffbdbdbd);
        backgroundFontColor = const Color(0xff222222);
      }
      break;
      case "IQ": {
        backgroundColor = const Color(0xffFFE6BA);
        backgroundFontColor = const Color(0xff000000);
      }
      break;
    }
  }
}