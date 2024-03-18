import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/Driver/DriverNavigationbar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Registration2 extends StatefulWidget {
  const Registration2({super.key});

  @override
  State<Registration2> createState() => _Registration2State();
}

class _Registration2State extends State<Registration2> {
  void getData() async {
     
    await FirebaseFirestore.instance.collection('Driver').add({
      'Name': user_name.text,
      'Liscence': liscence.text,
      'phone_number': ph_no.text,
      'mailid': mailid.text,
      'password': password.text,
      
    });
  }

  var user_name = TextEditingController();
  var liscence = TextEditingController();
  var ph_no = TextEditingController();
  var mailid = TextEditingController();
  var password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              'Register',
              style: TextStyle(
                color: Color(0xFF3DE07E),
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 130),
          Text(''),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
              child: TextFormField(
                controller: user_name,
                decoration: InputDecoration(
                    border: UnderlineInputBorder(), hintText: ('user_name')),
              ),
            ),
          ),
          Text(' '),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
              child: TextFormField(
                controller: liscence,
                decoration: InputDecoration(
                    border: UnderlineInputBorder(), hintText: ('liscence')),
              ),
            ),
          ),
          Text(''),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
              child: TextFormField(
                controller: ph_no,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    border: UnderlineInputBorder(), hintText: ('ph_no')),
              ),
            ),
          ),
          Text(''),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
              child: TextFormField(
                controller: mailid,
                decoration: InputDecoration(
                    border: UnderlineInputBorder(), hintText: ('mail id')),
              ),
            ),
          ),
          Text(''),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
              child: TextFormField(
                controller: password,
                decoration: InputDecoration(
                    border: UnderlineInputBorder(), hintText: ('password')),
              ),
            ),
          ),
          Text(
            'Already have account?Login',
            style: TextStyle(decoration: TextDecoration.underline),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: ElevatedButton(
              onPressed: () {
                getData();
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DriverNavigation();
                }));
              },
              child: Text(
                'SIGN UP',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
