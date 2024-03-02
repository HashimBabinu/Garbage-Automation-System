import 'package:flutter/material.dart';

class PublicProduct extends StatefulWidget {
  const PublicProduct({super.key});

  @override
  State<PublicProduct> createState() => _PublicProductState();
}

class _PublicProductState extends State<PublicProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Container(
                    child: SizedBox(
                        height: 200,
                        width: 200,
                        child: Image.asset('picture/logo.png'))),
              ),
            ],
          ),
          Container(
              height: 200,
              width: 200,
              child: Image.asset('picture/stick note.png')),
          Padding(
            padding: const EdgeInsets.only(right: 200),
            child: Text(
              'Sticky Note',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  border: Border.all(color: Colors.white)),
              child: Text(
                'This recycled sticky note boasts an eco-friendly design, crafted from 100% post-consumer recycled paper.',
                style: TextStyle(fontStyle: FontStyle.italic)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 200),
            child: Text('INR 10',style: TextStyle(fontWeight: FontWeight.bold,),),
          ),
          Row(
            children: [
              Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Color(0xFF3DE07E),
                      border: Border.all(color: const Color.fromARGB(255, 0, 0, 0))),
                  child: Center(
                    child: Text(
                      'Buy',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width:210,
                  decoration: BoxDecoration(
                      color: Color(0xFF3DE07E),
                      border: Border.all(color: const Color.fromARGB(255, 0, 0, 0))),
                  child: Center(
                    child: Text(
                      'Cancel',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)
                    ),
                  ),
                ),
            ],
          ),

        ],
      ),
    );
  }
}
