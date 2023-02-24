import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyWidget(),
  ));
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  TextEditingController controller = TextEditingController();
  bool b = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(
            controller: controller,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
                hintText: 'Enter your name',
                helperText: 'name',
                prefixIcon: Icon(Icons.people),
                suffixIcon: Icon(Icons.add_circle_outline_sharp),
                border: OutlineInputBorder()),
          ),
          TextField(
            obscureText: b,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
                hintText: 'Enter your code',
                helperText: 'password',
                prefixIcon: Icon(Icons.power_settings_new_rounded),
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
