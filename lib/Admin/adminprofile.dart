import 'package:flutter/material.dart';
import 'package:flutter_application_4/Admin/AdminEdit.dart';
import 'package:flutter_application_4/Admin/AdminNavigationbar.dart';
import 'package:flutter_application_4/Driver/DriverNavigationbar.dart';

class AdminProfile extends StatefulWidget {
  const AdminProfile({super.key});

  @override
  State<AdminProfile> createState() => _AdminProfileState();
}

class _AdminProfileState extends State<AdminProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(fit: StackFit.expand, children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(bottom: 400),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('picture/admin.jpg'), 
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ),
      Column(
        children: [
          Row(
             
              children: [
              InkWell(onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) {
                  return AdminNavigation();
                },));
              },
                child: Container(child: Icon(Icons.arrow_back)
                ),
              ),
                Center(
                    child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 90),
                    child: Image.asset(
                      'picture/logo.png',
                      width: 200,
                      height: 200,
                    ),
                  ),
                )),
               
              ],
            ),
          InkWell(onTap: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) {
              return AdminEdit();
            },));
          },
            child: Padding(
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