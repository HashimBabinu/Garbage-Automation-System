import 'package:flutter/material.dart';

class Login4 extends StatefulWidget {
  const Login4({super.key});

  @override
  State<Login4> createState() => _Login4State();
}

class _Login4State extends State<Login4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(child: Image.asset('picture/logo.png')),
          ),
          Text(''),Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(border: UnderlineInputBorder(),hintText: ('user_name')),
            ),
          ),
          Text(''),Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(border: UnderlineInputBorder(),hintText: ('password')),
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(child: ElevatedButton(onPressed: (){}, child: Text('LOGIN'))),
          ),
        ],
      )
    );
  }
}