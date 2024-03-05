import 'package:flutter/material.dart';
import 'package:flutter_application_4/Public/PublicNavigationbar.dart';
import 'package:flutter_application_4/Public/publichome.dart';

class PublicNotification extends StatefulWidget {
  const PublicNotification({super.key});

  @override
  State<PublicNotification> createState() => _PublicNotificationState();
}

class _PublicNotificationState extends State<PublicNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row( 
            children: [
              InkWell(onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) {
                  return PublicNavigation();
                },));
              },
                child: Container(child: Icon(Icons.arrow_back)
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Container(
                    child: SizedBox(
                        height: 200,
                        width: 200,
                        child: Image.asset('picture/logo.png'))),
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.drive_eta_rounded),
              Text(
                'Driver Status',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Divider(
            
            color: Colors.black,
            height: 20,
            thickness: 1,
            indent: 5,
            endIndent: 10,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 5,
                      color: Color.fromARGB(255, 35, 188, 94),
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            title: Center(
                              child: Text(
                                'Available Today',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          )),
                    ),
                  );
                }),
          ),
          Row(
            children: [
              Icon(Icons.star_outline_sharp),
              Text('Pickup Status',style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
          Divider(
            //Divider
            color: Colors.black,
            height: 20,
            thickness: 1,
            indent: 5,
            endIndent: 10,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 5,
                      color: Color.fromARGB(255, 35, 188, 94),
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            title: Center(child: Text('Completed',style: TextStyle(fontWeight: FontWeight.bold),)),
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
