import 'package:flutter/material.dart';
import 'package:flutter_application_4/Admin/AdminNavigationbar.dart';
import 'package:flutter_application_4/Admin/AdminWarningDriver.dart';
import 'package:flutter_application_4/Admin/AdminWarningRecycle.dart';

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
            children: [
              InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AdminNavigation();
                },));
              },
                child: Container(child: Icon(Icons.arrow_back)
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 90),
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
              InkWell(onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) {
                  return AdminWarningDriver();
                },));
              },
                child: Padding(
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
              ),
              InkWell(onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) {
                  return AdminWarningRecycle();
                },));
              },
                child: Container(
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
              ),

            ],
          )
        ],
      ),
    );

  }
}