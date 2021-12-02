import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

final GetIt getIt = GetIt.instance;

void main() {
  setupProviders();

  runApp(MyApp());
}

setupProviders() {}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiProvider(
        providers: [
          // ChangeNotifierProvider<ScannerProvider>(
          //   create: (context) => ScannerProvider(),
          // ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Traceable',
          theme: ThemeData(
            visualDensity: VisualDensity.adaptivePlatformDensity,
            scaffoldBackgroundColor: Colors.white,
          ),
          initialRoute: '/', //first screen
          routes: {
            '/': (context) => LoadingScreen(),
            '/login': (context) => LoginScreen(),
            '/home_screen': (context) => HomeScreen(),
          },
        ));
  }
}
