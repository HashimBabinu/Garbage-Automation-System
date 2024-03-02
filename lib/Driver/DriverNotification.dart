import 'package:flutter/material.dart';

class DriverNotification extends StatefulWidget {
  const DriverNotification({super.key});

  @override
  State<DriverNotification> createState() => _DriverNotificationState();
}

class _DriverNotificationState extends State<DriverNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
        children: [
          Row(
            children: [
              Icon(Icons.arrow_back),
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
          Expanded(
            child: ListView.builder(
                itemCount: 2,
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
                                      'We hope this message finds you well. We wanted to bring to your attention that there was a missed waste collection at [Household Address] on [Date]. It appears that the collection was not completed as scheduled, and unfortunately, this oversight has caused inconvenience to our customers.',
                                      
                                          
                                         
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