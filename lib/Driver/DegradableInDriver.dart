import 'package:flutter/material.dart';
import 'package:flutter_application_4/Driver/BiodegradableInDriver.dart';
import 'package:flutter_application_4/Driver/DriverNavigationbar.dart';

class DriverDegradable extends StatefulWidget {
  const DriverDegradable({super.key});

  @override
  State<DriverDegradable> createState() => _DriverDegradableState();
}

class _DriverDegradableState extends State<DriverDegradable> {
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
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25,top: 7),
                    child: InkWell(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return DriverBio();
                    },));
                    },
                      child: Text(
                        'BioDegradable',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.black),
                      ),
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
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 5,
                      color: Color(0xFF3DE07E),
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            title: Text(
                              'EcoCycle Solutions', 
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    
                                    Text('Town square,vazhikkadavu',
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.w600)),
                                    Text('04931 000000',
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic)),
                                            Text('user@gmail.com',
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic)),
                                  ],
                                ),
                              ],
                            ),
                           
                          )),
                    ),
                  );
                }),
          ),
 
        ],
      ),
    );
  }
}