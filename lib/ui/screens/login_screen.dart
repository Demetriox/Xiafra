import 'package:carrers/auth_google/google.dart';
import 'package:carrers/secure_storage/session.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          body: Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 0, top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  const Text(
                    'Entra a la app con Google',
                    style: TextStyle(fontSize: 18),
                  ),
                  SignInButton(
                    Buttons.Google,
                    onPressed: () async {
                      AuthModel auth = AuthModel();
                      await auth.handleGoogleLogin();
                      final user = await Session().getUser();
                      if (user.career != null) {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            '/home_screen', (Route<dynamic> route) => true,
                            arguments: user);
                      } else {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                          '/sign_up',
                          (Route<dynamic> route) => true,
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        onWillPop: () => Future.value(false));
  }
}
