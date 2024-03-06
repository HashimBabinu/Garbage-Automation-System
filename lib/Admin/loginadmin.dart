import 'package:flutter/material.dart';
import 'package:flutter_application_4/Admin/AdminNavigationbar.dart';

class Login4 extends StatefulWidget {
  const Login4({super.key});

  @override
  State<Login4> createState() => _Login4State();
}

class _Login4State extends State<Login4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(child: Image.asset('picture/logo.png')),
          ),
          Text(''),Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(border: UnderlineInputBorder(),hintText: ('user_name')),
            ),
          ),
          Text(''),Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(border: UnderlineInputBorder(),hintText: ('password')),
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(child: ElevatedButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) {
                return AdminNavigation();
              },));
            }, child: Text('LOGIN'))),
          ),
          Container(height: 60,
            child: Text('or')),
          
           ElevatedButton.icon(
              onPressed: () {
                
              },
              icon: Icon(Icons.g_mobiledata,color:Color(0xFF4285F4) ),
              label: Text('Continue with Google',style: TextStyle(color: Color(0xFF4285F4)),),
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 255, 255, 255), 
              ),
          ),
        ],
      ),
    );
  }
}