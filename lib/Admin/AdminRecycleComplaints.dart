import 'package:flutter/material.dart';
import 'package:flutter_application_4/Admin/AdminDriverCompaints.dart';
import 'package:flutter_application_4/Admin/AdminNavigationbar.dart';
import 'package:flutter_application_4/Admin/AdminReplay.dart';

class RecycleComplaints extends StatefulWidget {
  const RecycleComplaints({super.key});

  @override
  State<RecycleComplaints> createState() => _RecycleComplaintsState();
}

class _RecycleComplaintsState extends State<RecycleComplaints> {
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
                child: InkWell(onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) {
                    return DriverComplaints();
                  },));
                },
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
              ),
              Container(
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
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  
                  return Card(
                    elevation: 5,
                    color: Color.fromARGB(255, 255, 255, 255),
                    child: ListTile(
                      title: Text(
                          'Complaint against recycle team'),
                      trailing: ElevatedButton(
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
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}