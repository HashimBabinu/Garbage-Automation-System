import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/Admin/AdminHome.dart';
import 'package:flutter_application_4/Public/PublicNavigationbar.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  void getData() async{
 await FirebaseFirestore.instance.collection('users').add({'name':user_name.text,
 'address':address.text,'phone number':ph_no.text,'mail id':mailid.text,'password':password.text
  
 });
  }
  var user_name=TextEditingController();
  var address=TextEditingController();
  var ph_no=TextEditingController();
  var mailid=TextEditingController();
  var password=TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, 
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text('Register',style: TextStyle(color:Color(0xFF3DE07E),fontSize:32,fontWeight: FontWeight.bold,),),
          ),
          SizedBox(height:130),
          
          
          Text(''),Padding(
            
            padding: const EdgeInsets.only(left: 30,right: 30),
            child: Container(
              child: TextFormField(
                controller: user_name,
              decoration: InputDecoration(border:UnderlineInputBorder(),hintText: ('user_name')),
                      ),
            ),
          ),
          Text(' '),Padding(
            padding: const EdgeInsets.only(left: 30,right: 30),
            child: Container(
              child: TextFormField(
                controller: address,
              decoration: InputDecoration(border:UnderlineInputBorder(),hintText: ('adress')),
                      ),
            ),
           ),
           Text(''),Padding(
             padding: const EdgeInsets.only(left: 30,right: 30),
             child: Container(
               child: TextFormField(
                controller: ph_no,
                keyboardType: TextInputType.phone,
                decoration:InputDecoration(border: UnderlineInputBorder(),hintText: ('ph_no')) ,
               ),
             ),
           ),
           Text(''),Padding(
             padding: const EdgeInsets.only(left: 30,right: 30),
             child: Container(
               child: TextFormField(
                controller: mailid,
                decoration: InputDecoration(border:UnderlineInputBorder(),hintText: ('mail id')),
               ),
             ),
           ),
           Text(''),Padding(
             padding: const EdgeInsets.only(left: 30,right: 30),
             child: Container(
               child: TextFormField(
                controller: password,
                decoration:InputDecoration(border: UnderlineInputBorder(),hintText: ('password')) ,
               ),
             ),
           ),
           Text('Already have account?Login',style: TextStyle(decoration: TextDecoration.underline),),
           Padding(
             padding: const EdgeInsets.only(top:200),
             child: ElevatedButton(onPressed: () async{
              getData();
              Navigator.push(context,MaterialPageRoute(builder: (context) {
                return PublicNavigation();
                
                
              }));
             }, child:Text('SIGN UP',),),
           ),


        
    
        ],
      ),
    );
  }
}