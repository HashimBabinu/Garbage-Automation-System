import 'package:flutter/material.dart';

class PublicDriver extends StatefulWidget {
  const PublicDriver({super.key});

  @override
  State<PublicDriver> createState() => _PublicDriverState();
}

class _PublicDriverState extends State<PublicDriver> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Stack(fit: StackFit.expand, children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(bottom: 400),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('picture/truck.jpg'), 
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ),
      Column(
        children: [
          Row(
           
            
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(child: Icon(Icons.arrow_back)),
              ),
              Container(child: Image.asset('picture/logo.png'))
             
             
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 260, right: 200),
            child: SizedBox(
              height: 120,
              width: 100,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                      height: 100, width: 100, child: Icon(Icons.person)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Row(
              children: [
                 
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Driver Name',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '000000000000',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'user@gmail.com',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                   
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Container(
                        decoration: BoxDecoration(shape: BoxShape.circle,color: const Color.fromARGB(255, 255, 255, 255),
                        border: Border.all(color: Colors.black,width: 3)),
                        child: Icon(Icons.call)),
                ),
              ],
            ),
          ),
        ],
      ),
    ]));
  }
}