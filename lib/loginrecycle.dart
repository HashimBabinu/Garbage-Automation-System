import 'package:flutter/material.dart';

class Login3 extends StatefulWidget {
  const Login3({super.key});

  @override
  State<Login3> createState() => _Login3State();
}

class _Login3State extends State<Login3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(child: Image.asset('picture/recycle.jpg')),
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
      ),

    );
  }
}