import 'package:flutter/material.dart';
import 'package:flutter_application_4/Driver/DriverNavigationbar.dart';

class Registration2 extends StatefulWidget {
  const Registration2({super.key});

  @override
  State<Registration2> createState() => _Registration2State();
}

class _Registration2State extends State<Registration2> {
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
              decoration: InputDecoration(border:UnderlineInputBorder(),hintText: ('user_name')),
                      ),
            ),
          ),
          Text(' '),Padding(
            padding: const EdgeInsets.only(left: 30,right: 30),
            child: Container(
              child: TextFormField(
              decoration: InputDecoration(border:UnderlineInputBorder(),hintText: ('liscence')),
                      ),
            ),
           ),
           Text(''),Padding(
             padding: const EdgeInsets.only(left: 30,right: 30),
             child: Container(
               child: TextFormField(
                keyboardType: TextInputType.phone,
                decoration:InputDecoration(border: UnderlineInputBorder(),hintText: ('ph_no')) ,
               ),
             ),
           ),
           Text(''),Padding(
             padding: const EdgeInsets.only(left: 30,right: 30),
             child: Container(
               child: TextFormField(
                decoration: InputDecoration(border:UnderlineInputBorder(),hintText: ('mail id')),
               ),
             ),
           ),
           Text(''),Padding(
             padding: const EdgeInsets.only(left: 30,right: 30),
             child: Container(
               child: TextFormField(
                decoration:InputDecoration(border: UnderlineInputBorder(),hintText: ('password')) ,
               ),
             ),
           ),
           Text('Already have account?Login',style: TextStyle(decoration: TextDecoration.underline),),
           Padding(
             padding: const EdgeInsets.only(top:100),
             child: ElevatedButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) {
                return DriverNavigation();
              }));
             }, child:Text('SIGN UP',),),
           ),


        
    
        ],
      ),
    );

  }
}