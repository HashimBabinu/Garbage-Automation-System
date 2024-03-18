import 'package:flutter/material.dart';
import 'package:flutter_application_4/Driver/BiodegradableInDriver.dart';
import 'package:flutter_application_4/Driver/DegradableInDriver.dart';
import 'package:flutter_application_4/Driver/DriverNavigationbar.dart';
import 'package:flutter_application_4/Driver/driverhome.dart';

class Recycled extends StatefulWidget {
  const Recycled({super.key});

  @override
  State<Recycled> createState() => _RecycledState();
}
 
class _RecycledState extends State<Recycled> {
  @override
  Widget build(BuildContext context) { 
    return Scaffold(
       body: Column(
        children: [
         Row( 
            children: [
              InkWell(onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) {
                  return DriverNavigation();
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
              Padding(
                padding: const EdgeInsets.only(right: 80),
                child: InkWell(onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) {
                    return DriverBio();
                  },));
                },
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25,top: 7),
                      child: Text(
                        'BioDegradable',
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
              InkWell(onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) {
                  return DriverDegradable();
                },));
              },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 33,top: 7),
                    child: Text(
                      'Degradable',
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
          ),
        ],
      ),
      
    );
  }
}