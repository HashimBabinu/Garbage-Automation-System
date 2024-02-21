import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Text('Register',style: TextStyle(color:Color(0xFF3DE07E),fontSize:32,fontWeight: FontWeight.bold,),),
          ),SizedBox(height: 100,),
          Text('', ),Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              child: TextFormField(
              decoration: InputDecoration(border:UnderlineInputBorder(),hintText: ('user_name')),
                      ),
            ),
          ),
          Text(' '),Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              child: TextFormField(
              decoration: InputDecoration(border:UnderlineInputBorder(),hintText: ('adress')),
                      ),
            ),
           ),
        
    
        ],
      ),
    );
  }
}