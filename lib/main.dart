import 'package:carrers/secure_storage/session.dart';
import 'package:carrers/ui/screens/home_screen.dart';
import 'package:carrers/ui/screens/loading_screen.dart';
import 'package:carrers/ui/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/services.dart';

import 'constants/constants.dart';
import 'models/user_model.dart';

final GetIt getIt = GetIt.instance;

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String career = "";
  late Layout layout;
  getCareer() async {
    career = await Session().getCareer();
  }
  @override
  void initState() {
    super.initState();
    Session().set("user", User(userId: "1", name: "Demetrio", career: "ISC", accessToken: "akljdh3q892hr239", expires: 4));
    getCareer();
    layout = Layout(career);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Traceable',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/', //first screen
      routes: {
        '/': (context) => const LoadingScreen(),
        '/login': (context) => const LoginScreen(),
        '/home_screen': (context) => const HomeScreen(),
      },
    );
  }
}