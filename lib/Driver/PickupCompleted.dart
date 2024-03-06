import 'package:flutter/material.dart';
import 'package:flutter_application_4/Driver/userindriver.dart';

class Pickup extends StatefulWidget {
  const Pickup({super.key});

  @override
  State<Pickup> createState() => _PickupState();
}

class _PickupState extends State<Pickup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) {
                  return Userd();
                },));
              },
                child: Stack(
                  children: [
                    
                    Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  border: Border.all()
                ),
                    ),
                   
                    Positioned.fill(
                child: Align(
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.check,
                    color: Color.fromARGB(255, 35, 188, 94),
                    size: 80,
                  ),
                ),
                    ),
                    
                    Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      'Completed',
                      style: TextStyle(
                        color: Color.fromARGB(255, 35, 188, 94),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      )
,
    );
  }
}