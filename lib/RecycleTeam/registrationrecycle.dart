import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/RecycleTeam/RecycleNavigation.dart';
import 'package:flutter_application_4/RecycleTeam/recyclehome.dart';

class Registration3 extends StatefulWidget {
  const Registration3({super.key});

  @override
  State<Registration3> createState() => _Registration3State();
}

class _Registration3State extends State<Registration3> {
  void getData()async{
    await FirebaseFirestore.instance.collection('Recycling_Team').add({'Name':user_name.text,
    'Phone Number': ph_no.text,'mailid':mailid.text,'password':password.text});
  }
  var user_name=TextEditingController();
  var ph_no=TextEditingController();
  var mailid=TextEditingController();
  var password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Register',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color:Color(0xFF3DE07E)),),
              ),
              Text(''),Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: TextFormField(
                    controller: user_name,
                    decoration: InputDecoration(border: UnderlineInputBorder(),hintText: ('user_name')),
                  ),
                ),
              ),
              Text(''),Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: TextFormField(
                    controller: ph_no,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(border: UnderlineInputBorder(),hintText: ('ph_no')),
                  ),
                ),
              ),
              Text(''),Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: TextFormField(
                    controller: mailid,
                    decoration: InputDecoration(border: UnderlineInputBorder(),hintText: ('mail id')),
                  ),
                ),
              ),
              Text(''),Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: TextFormField(
                    controller: password,
                    decoration: InputDecoration(border: UnderlineInputBorder(),hintText: ('password')),
                  ),
                ),
              ),
              ElevatedButton(onPressed: (){
                getData();
                Navigator.push(context,MaterialPageRoute(builder: (context) {
                  return RecycleNavigation();
                },));
              },style: ElevatedButton.styleFrom(primary: Color(0xFF3DE07E)) ,child: Text('SIGN UP',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),)),

            ],
          ),
        
      
    );
  }
}