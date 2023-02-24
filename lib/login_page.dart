import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 73, 128, 38),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'SIGN IN',
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
              SizedBox(
                height: 45,
              ),
              Row(
                children: [
                  Text(
                    '        Username',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    )),
                height: 60,
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                      prefixIconColor: Colors.white,
                      prefixIcon: Icon(Icons.person_pin),
                      hintText: 'Enter your username',
                      hintStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  textCapitalization: TextCapitalization.words,
                  // controller: controller,
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Row(
                children: [
                  Text(
                    '        Password',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    )),
                height: 60,
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                      prefixIconColor: Colors.white,
                      prefixIcon: Icon(Icons.lock),
                      hintText: 'Enter your password',
                      hintStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  textCapitalization: TextCapitalization.words,
                  // controller: controller,
                ),
              ),
              Text(
                '                                                                 Forget Passwrod?',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 38,
              ),
              Container(
                child: Center(
                  child: Text(
                    'LOGIN',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                height: 60,
                width: 280,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(50))),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  '       -OR-\n\n Sign in with',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      child: Center(
                        child: Text(
                          'f',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      child: Center(
                        child: Text(
                          'G',
                          style: TextStyle(
                              color: Color.fromARGB(255, 114, 237, 14),
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              Text(
                'Don\'t have an Account? Sign Up ',
                style: TextStyle(color: Colors.white, fontSize: 19),
              )
            ],
          ),
        ));
  }
}
