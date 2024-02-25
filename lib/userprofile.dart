import 'package:flutter/material.dart';

class Userprofile extends StatefulWidget {
  const Userprofile({super.key});

  @override
  State<Userprofile> createState() => _UserprofileState();
}

class _UserprofileState extends State<Userprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack( fit: StackFit.expand,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 290),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('picture/userprofile2.png'),
                  fit: BoxFit.contain, 
                ),
              ),
            ),
          ),
          

        ]
          )
          
    );
  }
}