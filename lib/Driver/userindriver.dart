import 'package:flutter/material.dart';
import 'package:flutter_application_4/Driver/DriverNavigationbar.dart';
import 'package:flutter_application_4/Driver/PickupCompleted.dart';

class Userd extends StatefulWidget {
  const Userd({super.key});

  @override
  State<Userd> createState() => _UserdState();
}

class _UserdState extends State<Userd> {
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
          Expanded( 
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 5,
                      color: Color.fromARGB(255, 35, 188, 94),
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            title:
                                    Text('Name:'),
                                    subtitle:
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Column(
                                              children: [
                                                Text('Address'),
                                                 Text('Number:'),
                                            Text('Mail id:'),
                                            Text('Pin:')
                                            
                                              ],
                                            ),
                                          ],
                                        ), 
                                         Column(
                                        children: [
                                          InkWell(onTap: () {
                                            Navigator.push(context,MaterialPageRoute(builder: (context) {
                                              return Pickup();
                                            },));
                                          },child: Icon(Icons.check)),
                                           Icon(Icons.access_time),
                                           Icon(Icons.cancel_presentation_sharp),
                                          
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
