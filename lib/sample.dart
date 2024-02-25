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
          title: Text('Underline Text Example'),
        ),
        body: Center(
          child: Container(
            child: Text(
              'This text is underlined',
              style: TextStyle(
                fontSize: 24, // Adjust the font size as needed
              ),
            ),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.black, // Change the color as needed
                  width: 1.0, // Adjust the thickness as needed
                ),
              ),
            ),
          ),
        ),
      );
    
  }
}

    