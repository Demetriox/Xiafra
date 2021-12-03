import 'package:carrers/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:carrers/secure_storage/session.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  late User user;
  @override
  initState() {
    super.initState();
    loadUser();
    load();
  }

//Information pre loaded, before app starts.
  Future<void> load() async {
    _getTokenFromSharedPref();
  }

  //Information pre loaded, before app starts.
  Future<void> loadUser() async {
    Session().set("user", User(userId: "1", name: "Demetrio", career: "IQ", accessToken: "akljdh3q892hr239", expires: 4));
  }

  //Check storage of user auth
  Future<void> _getTokenFromSharedPref() async {
    final user = await Session().getUser();
    if (user.accessToken != null) {
      Future.delayed(Duration.zero, () {
        Navigator.of(context).pushNamedAndRemoveUntil(
          '/home_screen',
          (Route<dynamic> route) => true,
          arguments: user
        );
      });
    } else {
      Future.delayed(Duration.zero, () {
        Navigator.of(context).pushNamedAndRemoveUntil(
          '/login',
          (Route<dynamic> route) => true,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Splash Screen"),
      ),
    );
  }
}
