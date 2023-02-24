import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyWidget(),
  ));
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(

            keyboardType: TextInputType.name,
            decoration: InputDecoration(
                hintText: 'Enter your name',
                helperText: 'name',
                prefix: Icon(Icons.percent),
                suffix: Icon(Icons.add_circle_outline_sharp),
                border: OutlineInputBorder()),
          ),
             TextField(  keyboardType: TextInputType.name,
            decoration: InputDecoration(
                hintText: 'Enter your name',
                helperText: 'name',
                prefix: Icon(Icons.percent),
                suffix: Icon(Icons.add_circle_outline_sharp),
                border: OutlineInputBorder()),
          ),
          
        ],
      ),
    );
  }
}
