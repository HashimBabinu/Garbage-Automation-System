import 'package:flutter/material.dart';

class AdminWarning extends StatefulWidget {
  const AdminWarning({super.key});

  @override
  State<AdminWarning> createState() => _AdminWarningState();
}

class _AdminWarningState extends State<AdminWarning> {
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 80),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 45,top: 7),
                    child: Text(
                      'Driver',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.black),
                    ),
                  ),
                  width: 123,
                  height: 34,
                  decoration: BoxDecoration(
                      color: Color(0xFF3DE07E),
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(10)),
                
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 22,top: 7),
                  child: Text(
                    'Recycle Team',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.black),
                  ),
                ),
                width: 123,
                height: 34,
                decoration: BoxDecoration(
                    color: Color(0xFF3DE07E),
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(10)),
                    

              ),

            ],
          )
        ],
      ),
    );

  }
}