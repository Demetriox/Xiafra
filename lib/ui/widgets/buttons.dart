import 'package:carrers/constants/constants.dart';
import 'package:flutter/material.dart';

class ButtonLayout extends StatelessWidget {
  final ButtonColors buttonColors;
  final String text;
  final void Function() btnFunc;

  const ButtonLayout(this.buttonColors, this.text, this.btnFunc, {Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: btnFunc,
      style: ElevatedButton.styleFrom(primary: buttonColors.backgroundColor),
      child: Text(
        text,
        style: TextStyle(color: buttonColors.fontColor),
      ),
    );
  }
}
