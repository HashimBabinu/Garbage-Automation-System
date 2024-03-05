import 'package:flutter/material.dart';
import 'package:flutter_application_4/Driver/DriverNavigationbar.dart';
import 'package:flutter_application_4/Driver/DriverNotification.dart';

class DriverProfile extends StatefulWidget {
  const DriverProfile({super.key});

  @override
  State<DriverProfile> createState() => _DriverProfileState();
}

class _DriverProfileState extends State<DriverProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(fit: StackFit.expand, children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(bottom: 400),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('picture/download.jpg'), 
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ),
      Column(
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              InkWell(onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) {
                  return DriverNavigation();
                },));
              },
                child: Container(child: Icon(Icons.arrow_back)
                ),
              ),
                Center(
                    child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'picture/logo.png',
                      width: 200,
                      height: 200,
                    ),
                  ),
                )),
                Container(child: Icon(Icons.logout)
                )
              ],
            ),
          Padding(
            padding: const EdgeInsets.only(right: 250,top: 80),
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
            padding: const EdgeInsets.only(right: 250),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  '9999999999',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'DL99999999991111',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'User@gmail.com',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    ]));
    
  }
}
