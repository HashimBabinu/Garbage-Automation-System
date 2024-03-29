import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/Admin/AdminNavigationbar.dart';
import 'package:flutter_application_4/Admin/AdminWarningDriver.dart';

class AdminWarningRecycle extends StatefulWidget {
  const AdminWarningRecycle({super.key});

  @override
  State<AdminWarningRecycle> createState() => _AdminWarningRecycleState();
}

class _AdminWarningRecycleState extends State<AdminWarningRecycle> {
  void getdata()async{
    await FirebaseFirestore.instance.collection('Warning').add({'Recyccle Warning':Warningrecycle.text});
  }
  var Warningrecycle=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         Row(
            children: [
              InkWell(onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) {
                  return AdminNavigation();
                },));
              },child: Icon(Icons.arrow_back)),
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
              InkWell(onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) {
                  return AdminWarningDriver();
                },));
              },
                child: Padding(
                  padding: const EdgeInsets.only(right: 80),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 45,top: 7),
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
                  padding: const EdgeInsets.only(left: 22,top: 7),
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
          Container(child: Text('')),Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: Warningrecycle,
              maxLines: null,
              decoration:InputDecoration(hintText: ('type here'),
              
              border: OutlineInputBorder()),
              
            ),
          ),
          Align(alignment:Alignment.bottomRight ,
          child: ElevatedButton(onPressed: (){
            getdata();
          },
          style: ElevatedButton.styleFrom(
                              primary: Color(0xFF3DE07E)), child: Text('sent',
                              style: TextStyle(color: Colors.black),))),
        ],
      ),
    );
  }
}