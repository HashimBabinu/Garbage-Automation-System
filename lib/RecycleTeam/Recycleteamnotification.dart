import 'package:flutter/material.dart';
import 'package:flutter_application_4/RecycleTeam/RecycleNavigation.dart';

class RecycleNotification extends StatefulWidget {
  const RecycleNotification({super.key});

  @override
  State<RecycleNotification> createState() => _RecycleNotificationState();
}

class _RecycleNotificationState extends State<RecycleNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
        children: [
          Row(
            children: [
              InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return RecycleNavigation();
                },));
              },
                child: Container(child: Icon(Icons.arrow_back)
              )
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
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 5,
                      color: Color.fromARGB(255, 35, 188, 94),
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            title: Text(
                              'By Admin:',
                              style: TextStyle(fontStyle:FontStyle.italic),
                            ),
                            subtitle: 
                                    Text(
                                      'Warning Message from Admin',
                                      
                                          
                                         
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