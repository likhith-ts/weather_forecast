import 'package:flutter/material.dart';
import 'pages/LoginScreen.dart';
import 'pages/homeScreen.dart';
import '/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';


Future<void> main() async {
  // WidgetFlutter.Binding.ensureInitialised();
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
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
      },
      // home: Scaffold(
      //   body: Center(
      //     child: Text('Hello World!'),
      //   ),
      // ),
    );
  }
}
