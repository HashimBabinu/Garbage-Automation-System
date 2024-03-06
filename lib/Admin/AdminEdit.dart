import 'package:flutter/material.dart';
import 'package:flutter_application_4/Admin/adminprofile.dart';

class AdminEdit extends StatefulWidget {
  const AdminEdit({super.key});

  @override
  State<AdminEdit> createState() => _AdminEditState();
}

class _AdminEditState extends State<AdminEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AdminProfile();
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
          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, border: Border.all()),
                child: Icon(
                  Icons.person,
                  size: 50,
                ),
              ),
            ],
          ),
          Text(''),
          TextFormField(
            decoration: InputDecoration(
                border: UnderlineInputBorder(), hintText: ' Name'),
          ),
         
          Text(''),
          TextFormField(
            decoration: InputDecoration(
                border: UnderlineInputBorder(), hintText: 'ph-no'),
          ),
          Text(''),
          TextFormField(
            decoration: InputDecoration(
                border: UnderlineInputBorder(), hintText: 'mail id'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Edit',
                      style: TextStyle(color: Colors.black),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}