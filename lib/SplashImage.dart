import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                     height:400,
                     width:400,
                    child:Image.asset("picture/logo.png")),
                ],
              ),
          ),
          Row( mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('GARBAGE AUTOMATION ',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color:  Color(0xFF3DE07E)),),
              
            ],
          ),
          Text('SYSTEM',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color:  Color(0xFF3DE07E)),),
        ],
      ),
    );
  }
}