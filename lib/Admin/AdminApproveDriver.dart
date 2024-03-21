import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/Admin/AdminHome.dart';
import 'package:flutter_application_4/Admin/AdminNavigationbar.dart';

class ApproveDriver extends StatefulWidget {
  const ApproveDriver({super.key});

  @override
  State<ApproveDriver> createState() => _ApproveDriverState();
}

class _ApproveDriverState extends State<ApproveDriver> {
  Future<QuerySnapshot<Map<String,dynamic>>> getData() async {//backend
    QuerySnapshot<Map<String,dynamic>> querySnapshot = await FirebaseFirestore.instance.collection('Driver').get();
    return querySnapshot;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AdminNavigation();
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
            child: FutureBuilder(
              future: getData(),
              builder: (context,snapshot) {
                 final driver = snapshot.data!.docs??[];//
                return ListView.builder(
                     itemCount: driver.length,
                     
                    itemBuilder: (context, index) {
                      final Map<String, dynamic> driverData = driver[index].data() as Map<String, dynamic>;
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          elevation: 5,
                          color: Color.fromARGB(255, 35, 188, 94),
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                title: Text(
                                  driverData['Name'],
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                subtitle: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      children: [
                                        Text( driverData['Phone Number'],
                                            style: TextStyle(
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.w600)),
                                        Text( driverData['mailid'],
                                            style: TextStyle(
                                                fontStyle: FontStyle.italic)),
                                      ],
                                    ),
                                  ],
                                ),
                                trailing: Column(
                                  children: [
                                    Icon(Icons.task_alt),
                                    Icon(Icons.close),
                                  ],
                                ),
                              )),
                        ),
                      );
                    });
              }
            ),
          ),
        ],
      ),
    );
  }
}
