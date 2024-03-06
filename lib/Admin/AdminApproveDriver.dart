import 'package:flutter/material.dart';
import 'package:flutter_application_4/Admin/AdminHome.dart';
import 'package:flutter_application_4/Admin/AdminNavigationbar.dart';

class ApproveDriver extends StatefulWidget {
  const ApproveDriver({super.key});

  @override
  State<ApproveDriver> createState() => _ApproveDriverState();
}

class _ApproveDriverState extends State<ApproveDriver> {
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
                            title: Text(
                              'Dileep',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Text('999999999999',
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.w600)),
                                    Text('username@gmail.com',
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
                }),
          ),
        ],
      ),
    );
  }
}
