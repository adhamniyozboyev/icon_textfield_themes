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
  bool b = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
                hintText: 'Enter your name',
                helperText: 'name',
                prefix: Icon(Icons.people),
                suffix: Icon(Icons.add_circle_outline_sharp),
                border: OutlineInputBorder()),
          ),
          TextField(
            obscureText: b,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
                hintText: 'Enter your code',
                helperText: 'password',
                prefix: Icon(Icons.password),
                suffixIcon: IconButton(
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onPressed: () {
                      setState(() {
                        b = !b;
                      });
                    },
                    icon: Icon(b ? Icons.visibility_off : Icons.visibility)),
                border: OutlineInputBorder()),
          ),
        ],
      ),
    );
  }
}
