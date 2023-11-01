import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multipple',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        useMaterial3: true,
      ),
      home: const LoginPage(title: ''),
    );
  }

}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: null,
      body: Center(
        child: Stack(
          children: <Widget>[
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/multipple_logo.png',width: 180),
                  const Text(
                      "Your ultimate learning platform",
                      style: TextStyle(color: Colors.black, fontSize: 16.0)
                  ),
                  const SizedBox(height: 200)
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                          child:
                          Padding(
                              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                              child:
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor: Colors.black87,
                                    padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    textStyle: const TextStyle(fontSize: 16)),
                                child: const Text('Log in'),
                                onPressed: () {

                                },
                              ))),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                          child:
                          Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 50),
                              child:
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    backgroundColor: Colors.white60,
                                    padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    textStyle: const TextStyle(fontSize: 16)),
                                child: const Text('Create Account'),
                                onPressed: () {

                                },
                              ))),
                    ],
                  ),
                  const Text(
                      "or continue with",
                      style: TextStyle(color: Colors.black, fontSize: 16.0)
                  ),
                  const SizedBox(height: 200)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}