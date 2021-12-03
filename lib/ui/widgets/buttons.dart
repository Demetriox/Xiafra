import 'package:flutter/material.dart';

class ButtonLayout extends StatelessWidget {
  Color color;
  String text;
  Function btnFunc;
  Color bgColor;

  ButtonLayout(this.color, this.bgColor, this.text, this.btnFunc);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        btnFunc;
      },
      style: ElevatedButton.styleFrom(primary: bgColor),
      child: Text(
        text,
        style: TextStyle(color: color),
      ),
    );
  }
}
