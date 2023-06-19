import 'package:flutter/material.dart';
import 'package:weather_forecast/widget_tree.dart';
import 'pages/LoginScreen.dart';
import 'pages/homeScreen.dart';
import '/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'widget_tree.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => LoginScreen(),
      //   '/home': (context) => HomeScreen(),
      // },
      home: WidgetTree(),
    );
  }
}
