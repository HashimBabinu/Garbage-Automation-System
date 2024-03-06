import 'package:flutter/material.dart';
import 'package:flutter_application_4/RecycleTeam/RecycleNavigation.dart';
import 'package:flutter_application_4/RecycleTeam/recyclehome.dart';

class Registration3 extends StatefulWidget {
  const Registration3({super.key});

  @override
  State<Registration3> createState() => _Registration3State();
}

class _Registration3State extends State<Registration3> {
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
                    decoration: InputDecoration(border: UnderlineInputBorder(),hintText: ('user_name')),
                  ),
                ),
              ),
              Text(''),Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(border: UnderlineInputBorder(),hintText: ('ph_no')),
                  ),
                ),
              ),
              Text(''),Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: TextFormField(
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
              ElevatedButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) {
                  return RecycleNavigation();
                },));
              },style: ElevatedButton.styleFrom(primary: Color(0xFF3DE07E)) ,child: Text('SIGN UP',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),)),

            ],
          ),
        
      
    );
  }
}