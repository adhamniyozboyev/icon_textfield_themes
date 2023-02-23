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
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          func(Icons.home,),
          func(Icons.house),
          func(Icons.home_work),
          func(Icons.house_sharp),
          func(Icons.add_home_work),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          func(Icons.pool,Colors.blue),
          func(Icons.water,Colors.blue),
          func(Icons.water_sharp,Colors.blue),
          func(Icons.pool_rounded,Colors.blue),
          func(Icons.pool_sharp,Colors.blue),
        ],
      ),
    ]));
  }
}
