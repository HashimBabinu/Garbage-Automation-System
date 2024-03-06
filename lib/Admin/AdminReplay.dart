import 'package:flutter/material.dart';
import 'package:flutter_application_4/Admin/AdminDriverCompaints.dart';

class AdminReplay extends StatefulWidget {
  const AdminReplay({super.key});

  @override
  State<AdminReplay> createState() => _AdminReplayState();
}

class _AdminReplayState extends State<AdminReplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
         children: [
           Row(
            children: [
              InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DriverComplaints();
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
              Container(child: Text('')),Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(maxLines: null,
              decoration:InputDecoration(hintText: ('reply'),
              border: OutlineInputBorder()),
              
            ),
          ),
          Align(alignment:Alignment.bottomRight ,
          child: ElevatedButton(onPressed: (){},
          style: ElevatedButton.styleFrom(
                              primary: Color(0xFF3DE07E)), child: Text('sent',
                              style: TextStyle(color: Colors.black),))),
         ],
       ),
          
    );
  }
}