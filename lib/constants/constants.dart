import 'package:flutter/cupertino.dart';

class ButtonColors {
  Color backgroundColor = const Color(0xff000000);
  Color fontColor = const Color(0xff000000);
  ButtonColors(this.backgroundColor, this.fontColor);
  ButtonColors.empty();
}

class Layout {
  Color backgroundColor = const Color(0xff000000);
  Color backgroundFontColor = const Color(0xff000000);
  ButtonColors buttonPrimary = ButtonColors.empty();
  ButtonColors buttonSecondary = ButtonColors.empty();
  Layout(String career) {
    switch (career) {
      case "ISC":
        {
          backgroundColor = const Color(0xffbdbdbd);
          backgroundFontColor = const Color(0xff222222);
          buttonPrimary =
              ButtonColors(const Color(0xffA13838), const Color(0xffFFFFFF));
          buttonSecondary =
              ButtonColors(const Color(0xff385BA1), const Color(0xffFFFFFF));
        }
        break;
      case "IQ":
        {
          backgroundColor = const Color(0xffFFE6BA);
          backgroundFontColor = const Color(0xff000000);
          buttonPrimary =
              ButtonColors(const Color(0xff38A13C), const Color(0xffFFFFFF));
        }
        break;
    }
  }
}
