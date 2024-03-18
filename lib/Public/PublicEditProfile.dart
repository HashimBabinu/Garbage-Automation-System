import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/Public/userprofile.dart';

class PublicEdit extends StatefulWidget {
  const PublicEdit({super.key});

  @override
  State<PublicEdit> createState() => _PublicEditState();
}

class _PublicEditState extends State<PublicEdit> {
  var name=TextEditingController();
  var address=TextEditingController();
  var ph_no=TextEditingController();
  var mailid=TextEditingController();
  var password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Userprofile();
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
            controller: name,
            decoration: InputDecoration(
                border: UnderlineInputBorder(), hintText: ' Name'),
          ),
          Text(''),
          TextFormField(controller: address,
            decoration: InputDecoration(
                border: UnderlineInputBorder(), hintText: 'Address'),
          ),
          Text(''),
          TextFormField(
            controller: ph_no,
            decoration: InputDecoration(
                border: UnderlineInputBorder(), hintText: 'ph-no'),
          ),
          Text(''),
          TextFormField(
            controller: mailid,
            decoration: InputDecoration(
                border: UnderlineInputBorder(), hintText: 'mail id'),
          ),
          TextFormField(
            controller: password,
            decoration: InputDecoration(
                border: UnderlineInputBorder(), hintText: 'password'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () async{
                      await FirebaseFirestore.instance.collection('Edit profile').add({'name':name.text,
                      'address':address.text,'phone number':ph_no.text,
                      'password':password.text});
                    },
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
