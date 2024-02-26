import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return 

 Scaffold(
       appBar: AppBar(
          title: Text('Underlined Text Example'),
        ),
        body: Center(
          child: Container(
            width: double.infinity,
            child: Text(
              'User Name',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24, // Adjust the font size as needed
              ),
            ),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.black,
                  width: 1.0, // Adjust the width as needed
                ),
              ),
            ),
          ),
        ),
      );

    
  }
}

    