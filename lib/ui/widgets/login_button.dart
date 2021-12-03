import 'package:flutter/material.dart';

class LogInBtn extends StatelessWidget {
  final Function onPressCallback;

  LogInBtn({required this.onPressCallback});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.black12,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width / 1.8,
        padding: EdgeInsets.fromLTRB(0, 15.0, 0, 15.0),
        onPressed: onPressCallback(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const <Widget>[
            Text(
              "Iniciar Sesión",
              textAlign: TextAlign.center,
              maxLines: 1,
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFFFFFFFF),
                fontFamily: 'Muli',
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
