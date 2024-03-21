import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/Admin/AdminNavigationbar.dart';
import 'package:flutter_application_4/Admin/AdminRecycleComplaints.dart';
import 'package:flutter_application_4/Admin/AdminReplay.dart';

class DriverComplaints extends StatefulWidget {
  const DriverComplaints({super.key});

  @override
  State<DriverComplaints> createState() => _DriverComplaintsState();
}

class _DriverComplaintsState extends State<DriverComplaints> {
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 80),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 45, top: 7),
                    child: Text(
                      'Driver',
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
              ),
              InkWell(onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) {
                  return RecycleComplaints();
                },));
              },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 22, top: 7),
                    child: Text(
                      'Recycle Team',
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
              ),
            ],
          ),
          Expanded(
            child: FutureBuilder(
              future: getData(),

              builder: (context,snapshot) {
                final complaint = snapshot.data!.docs??[];
                return ListView.builder(
                    itemCount:  complaint.length,
                    itemBuilder: (context, index) {
                       var compl = complaint[index].data() as Map<String,dynamic>;
                      
                      return Card(
                        elevation: 5,
                        color: Color.fromARGB(255, 255, 255, 255),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                              children: [
                                Text( compl['title'],),
                               SizedBox(height: 20,),
                               Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(context,MaterialPageRoute(builder: (context) {
                                        return AdminReplay();
                                      },));
                                    },
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xFF3DE07E)),
                                    child: Text(
                                      'Reply',
                                      style: TextStyle(color: Colors.black),
                                    )),
                              ],
                            ),
                              ],
                            ),
                          ),
                          
                        
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
