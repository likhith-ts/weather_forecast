import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        body: Container(
            child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: Image(image: image),
            ),
            Center(child: Container()),
          ],
        )),
      ),
    );
  }
}
