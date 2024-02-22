import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Row(
        mainAxisAlignment: MainAxisAlignment.center, 
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center, 
            children: [
              Image.asset('picture/logo.png'),
            ],
          ),
        ],
      ),
    );
  }
}