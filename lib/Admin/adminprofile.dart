import 'package:flutter/material.dart';

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
              image: AssetImage('picture/logo.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(child: Icon(Icons.arrow_back)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, top: 10),
                child: Center(
                    child: Container(
                        child: SizedBox(
                            height: 10,
                            width: 10,
                            child: Image.asset('picure/logo.png')))),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(child: Icon(Icons.logout)),
              ),
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
            padding: const EdgeInsets.only(right: 250),
            child: Column(
              children: [
                Text(
                  'Name:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  '   Number:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  '  Mail id:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    ]));;
  }
}