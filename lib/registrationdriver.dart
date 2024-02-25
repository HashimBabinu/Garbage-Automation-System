import 'package:flutter/material.dart';

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
            padding: const EdgeInsets.all(8.0),
            child: Text('Register',style: TextStyle(color: Color(0xFF3DE07E),fontSize:32,fontWeight: FontWeight.bold,),),
          ),
          Text(''),Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: TextFormField(
                decoration: InputDecoration(border: UnderlineInputBorder(),hintText: ('user_name')),
              ),
            ),
          ),
          Text(''),Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(border: UnderlineInputBorder(),hintText: ('ph_no')),
              
              ),
            ),
          ),
          Text(''),Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(border: UnderlineInputBorder(),hintText: ('mail id')),
              ),
            ),
          ),

         Text(''),Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
             child: TextFormField(
              decoration: InputDecoration(border: UnderlineInputBorder(),hintText: ('password')),
             
             ),
           ),
         ),
         ElevatedButton(onPressed: (){}, child: Text('SIGN UP')),
        ],
      )
    );
  }
}