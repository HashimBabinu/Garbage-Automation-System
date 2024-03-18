import 'package:flutter/material.dart';
import 'package:flutter_application_4/Common/loginadmin.dart';
import 'package:flutter_application_4/Driver/driverhome.dart';
import 'package:flutter_application_4/Public/publichome.dart';
import 'package:flutter_application_4/RecycleTeam/recyclehome.dart';
import 'package:flutter_application_4/login.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
        children: [
          Image.asset(
            'picture/logo.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 40.0), // Adjust the height as needed
                    Text(
                      'Choose your user type:',
                      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    SizedBox(height: 20.0),
                     _buildButton(context, 'Admin', Icons.person, Login4(type:'Admin')),
                    _buildButton(context, 'User', Icons.person, Login4(type:'User')),
                    _buildButton(
                        context, 'Driver', Icons.directions_run, Login4(type: 'Driver',)),
                    _buildButton(
                        context, 'Recycle Team', Icons.shopping_cart, Login4(type: 'Recycle',)),
                    
                    
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(BuildContext context, String label, IconData icon, Widget page) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return page;
          }));
        },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(16.0), backgroundColor: Colors.blue, // Change the button color as needed
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 30.0, color: Colors.white),
            SizedBox(width: 10.0),
            Text(
              label,
              style: TextStyle(fontSize: 18.0, color: Colors.white),
            ),
          ],
        ),
      ),

    );
  }
}