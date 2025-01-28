import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blueAccent,
        ),
        body: AskMePage(),
      ),
    );
  }
}

class AskMePage extends StatefulWidget {
  const AskMePage({super.key});

  @override
  State<AskMePage> createState() => _AskMePageState();
}

class _AskMePageState extends State<AskMePage> {
  int ballNumber = 1;
  void changeBallNumber() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextButton(
          onPressed: () {
            changeBallNumber();
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
