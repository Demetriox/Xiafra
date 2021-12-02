class LogInBtn extends StatelessWidget {
  final Function onPressCallback;

  LogInBtn({this.onPressCallback});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      borderRadius: BorderRadius.circular(30.0),
      color: kBlueColor,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width / 1.8,
        padding: EdgeInsets.fromLTRB(0, 15.0, 0, 15.0),
        onPressed: onPressCallback,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            AutoSizeText(
              "Iniciar Sesión",
              textAlign: TextAlign.center,
              minFontSize: 12,
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
