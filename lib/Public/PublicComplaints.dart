import 'package:cloud_firestore/cloud_firestore.dart';
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
  Future<QuerySnapshot<Map<String,dynamic>>> getData() async {//backend 
    QuerySnapshot<Map<String,dynamic>> querySnapshot = await FirebaseFirestore.instance.collection('Complaints').get();
    return querySnapshot;
  }
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
            child: FutureBuilder(
              future: getData(),
              builder: (context,snapshot) {
                final complaint = snapshot.data!.docs??[];
                return ListView.builder(
                    itemCount: complaint.length,
                    itemBuilder: (context, index) {
                      var compl = complaint[index].data() as Map<String,dynamic>;
                       
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
                                          compl['title'],
                                          style: TextStyle(fontStyle:FontStyle.italic),
                                        ),
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
                                            compl['complaint'],
                                            
                                                
                                               
                                          ),
                                        ),
                                       
                                       
                              )),
                        ),                  
                      );
                    });
              }
            ),
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