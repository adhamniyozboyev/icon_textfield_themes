import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget func(IconData icon,[Color color=Colors.black]) {
    return Icon(
      icon,
      size: 70,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:TextField()
    );
  }
}
