import 'package:flutter/material.dart';

class RegisterBtn extends StatelessWidget {
  final Function onPressCallback;

  RegisterBtn({this.onPressCallback});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.white,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(color: kBlueColor, width: 2.0),
        ),
        minWidth: MediaQuery.of(context).size.width / 1.8,
        padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: onPressCallback,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              "Registrar",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: kBlueColor,
                fontFamily: 'Muli',
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
      ),
    );
  }
}
