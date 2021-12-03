import 'package:carrers/providers/user_provider.dart';
import 'package:carrers/ui/screens/home_screen.dart';
import 'package:carrers/ui/screens/loading_screen.dart';
import 'package:carrers/ui/screens/login_screen.dart';
import 'package:carrers/ui/screens/sign_up_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/services.dart';

final GetIt getIt = GetIt.instance;

setupProviders() {
  //HERE GOES ALL THE GET IT STUFF
  GetIt.I.registerSingleton(UserLoged());
}

Future<void> main() async {
  setupProviders();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
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
        '/sign_in': (context) => const LoginScreen(),
        '/sign_up': (context) => const SignUpScreen(),
        '/home_screen': (context) => const HomeScreen(),
      },
    );
  }
}
