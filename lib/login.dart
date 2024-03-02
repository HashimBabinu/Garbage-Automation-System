import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(child: Image.asset('picture/trash.png')),
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
              decoration: InputDecoration(border: UnderlineInputBorder(),hintText: ('password'))
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(child: ElevatedButton(onPressed: (){}, child: Text('LOGIN',style: TextStyle(color: Color(0xFF3DE07E)),))),
          ),
          Text('or'),
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