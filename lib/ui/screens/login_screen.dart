import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 12,
                ),
                Container(
                    alignment: Alignment.topCenter,
                    width: double.infinity,
                    // color: Colors.blue,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        const Text(
                          "Bippness",
                          style: TextStyle(
                            fontSize: 50,
                            fontFamily: 'Aristo',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const <Widget>[
                                  AutoSizeText(
                                    '¡Bienvenido!',
                                    maxLines: 1,
                                    minFontSize: 15,
                                    maxFontSize: 45,
                                    style: TextStyle(
                                      fontFamily: 'Muli',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 38,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ]),
                            Container(
                              height: MediaQuery.of(context).size.height / 40,
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 1.2,
                                    child: const Center(
                                      child: AutoSizeText(
                                        'Únete a la red de negocios más grande de México.',
                                        maxLines: 3,
                                        minFontSize: 10,
                                        maxFontSize: 25,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Muli',
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                          ],
                        ),
                        _isLoading
                            ? const SizedBox()
                            : Column(children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 40,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(bottom: 0, top: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      LogInBtn(onPressCallback: () {
                                        Navigator.of(context)
                                            .pushNamedAndRemoveUntil(
                                                '/sign_in',
                                                (Route<dynamic> route) =>
                                                    false);
                                      }),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 10, top: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      RegisterBtn(onPressCallback: () {
                                        Navigator.of(context)
                                            .pushNamedAndRemoveUntil(
                                                '/sign_up',
                                                (Route<dynamic> route) =>
                                                    false);
                                      }),
                                    ],
                                  ),
                                )
                              ]),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
