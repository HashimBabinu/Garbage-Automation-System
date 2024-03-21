import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/Admin/AdminNavigationbar.dart';

class AdminViewUsers extends StatefulWidget {
  const AdminViewUsers({super.key});

  @override
  State<AdminViewUsers> createState() => _AdminViewUsersState();
}

class _AdminViewUsersState extends State<AdminViewUsers> {
  Future<QuerySnapshot<Map<String,dynamic>>> getData() async {//backend
    QuerySnapshot<Map<String,dynamic>> querySnapshot = await FirebaseFirestore.instance.collection('users').get();
    return querySnapshot;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return AdminNavigation();
                      },
                    ));
                  },
                  child: Icon(Icons.arrow_back)),
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
            child:  FutureBuilder(//backend
                    future: getData(),
                    builder: (context,snapshot) {
                      final user = snapshot.data!.docs??[];
                       if (snapshot.connectionState == ConnectionState.waiting) {//eooro maran
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }//
                      return ListView.builder( 
                          itemCount: user.length,
                          itemBuilder: (context, index) {
                            var usr = user[index].data() as Map<String,dynamic>;
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                elevation: 5,
                                color: Color.fromARGB(255, 35, 188, 94),
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ListTile(
                                      title: Text(
                                        usr['name'],
                                        style:
                                            TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      subtitle: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Column(
                                            children: [
                                              Text(
                                                usr['address'],
                                                style: TextStyle(
                                                    fontStyle: FontStyle.italic,
                                                    fontWeight: FontWeight.w600),
                                              ),
                                              Text(usr['phone number'],
                                                  style: TextStyle(
                                                      fontStyle: FontStyle.italic,
                                                      fontWeight: FontWeight.w600)),
                                              Text(usr['mail id'],
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
                    
                  
                }),
          ),
        ],
      ),
    );
  }
}
