import 'package:flutter/material.dart';
import 'package:flutter_application_4/Public/PublicAddComplaint.dart';
import 'package:flutter_application_4/Public/PublicAdminReply.dart';
import 'package:flutter_application_4/Public/PublicNavigationbar.dart';

class PublicComplaint extends StatefulWidget {
  const PublicComplaint({super.key});

  @override
  State<PublicComplaint> createState() => _PublicComplaintState();
}

class _PublicComplaintState extends State<PublicComplaint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Column(
        children: [
         Row(
            children: [
              InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PublicNavigation();
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
                            title: Column(
                              
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Daniel Vargese ',
                                      style: TextStyle(fontStyle:FontStyle.italic),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('12/03/2002'),
                                  ],
                                ),
                              ],
                            ),
                            subtitle: 
                                    InkWell(onTap: () {
                                      Navigator.push(context,MaterialPageRoute(builder: (context) {
                                        return PublicAdminReply();
                                      },));
                                    },
                                      child: Text(
                                        'I would like to report a missed waste pickup for my household located at marutha. Our scheduled pickup day was 17/03/2000, but unfortunately, the waste collection truck did not pass by our area today. We had placed our bins out on time according to the schedule provided by the municipality, but it seems they were not collected',
                                        
                                            
                                           
                                      ),
                                    ),
                                   
                                   
                          )),
                    ),                  
                  );
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) {
                  return PublicAddComplaint();
                },));
              },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 50,right: 20),
                  child: Icon(Icons.add_circle_outline),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}