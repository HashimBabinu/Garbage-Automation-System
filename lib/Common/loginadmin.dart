import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/Admin/AdminNavigationbar.dart';
import 'package:flutter_application_4/Driver/DriverNavigationbar.dart';
import 'package:flutter_application_4/Driver/driverhome.dart';
import 'package:flutter_application_4/Public/PublicNavigationbar.dart';
import 'package:flutter_application_4/Public/publichome.dart';
import 'package:flutter_application_4/RecycleTeam/RecycleNavigation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login4 extends StatefulWidget {
  String type;
  Login4({super.key, required this.type});
 
  @override
  State<Login4> createState() => _Login4State();
}

class _Login4State extends State<Login4> {
  var name = TextEditingController();

  var password = TextEditingController();

  Future<void> checkDetails() async {
    if (name.text == 'admin@gmail.com' && password.text == 'admin123') {
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return AdminNavigation();
        },
      ));
    }
    if(widget.type=='User'){
    final QuerySnapshot userSnapshot =
        await FirebaseFirestore.instance
            .collection('users')
            .where('name', isEqualTo: name.text) 
            .where('password', isEqualTo: password.text)
            // .where('status', isEqualTo: 1)
            .get();
           
if(userSnapshot.docs.isNotEmpty){
  var userid = userSnapshot.docs[0].id;
  SharedPreferences sp = await SharedPreferences.getInstance();
  sp.setString('uid',userid);

  
   Navigator.push(context,MaterialPageRoute(builder: (context) {
              return PublicNavigation();
            },));
}
else{
   // Show an error message to the user
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Login Failed'),
            content: Text('Invalid username or password. Please try again.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('OK'),
              ),
            ],
          ),
        );
}
           
   
    }
        if(widget.type=='Driver'){
    final QuerySnapshot DriverSnapshot =
        await FirebaseFirestore.instance
            .collection('Driver')
            .where('Name', isEqualTo: name.text) 
            .where('password', isEqualTo: password.text)
            // .where('status', isEqualTo: 1)
            .get();
           
            if(DriverSnapshot.docs.isNotEmpty){
  var userid = DriverSnapshot.docs[0].id;
  SharedPreferences sp = await SharedPreferences.getInstance(); 
  sp.setString('uid',userid);

  
   Navigator.push(context,MaterialPageRoute(builder: (context) {
              return DriverNavigation();
            },));
}
else{
   // Show an error message to the user
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Login Failed'),
            content: Text('Invalid username or password. Please try again.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('OK'),
              ),
            ],
          ),
        );
}
            

    }
    if(widget.type=='Recycle'){
    final QuerySnapshot RecycleSnapshot =
        await FirebaseFirestore.instance
            .collection('Recycling_Team')
            .where('Name', isEqualTo: name.text) 
            .where('password', isEqualTo: password.text)
            // .where('status', isEqualTo: 1)
            .get();
          if(RecycleSnapshot.docs.isNotEmpty){
  var userid = RecycleSnapshot.docs[0].id;
  SharedPreferences sp = await SharedPreferences.getInstance();
  sp.setString('uid',userid);

  
   Navigator.push(context,MaterialPageRoute(builder: (context) {
              return RecycleNavigation();
            },));
}
else{
   // Show an error message to the user
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Login Failed'),
            content: Text('Invalid username or password. Please try again.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('OK'),
              ),
            ],
          ),
        );
}
            

    }
    


    
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(child: Image.asset('picture/logo.png')),
            ),
            Text(''),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: name,
                decoration: InputDecoration(
                    border: UnderlineInputBorder(), hintText: ('user_name')),
              ),
            ),
            Text(''),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: password,
                decoration: InputDecoration(
                    border: UnderlineInputBorder(), hintText: ('password')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  child: ElevatedButton(
                      onPressed: () {
                        checkDetails();
                       
                      },
                      child: Text('LOGIN'))),
            ),
            Container(height: 60, child: Text('or')),
            ElevatedButton.icon(
              onPressed: () {
              checkDetails();
              },
              icon: Icon(Icons.g_mobiledata, color: Color(0xFF4285F4)),
              label: Text(
                'Continue with Google',
                style: TextStyle(color: Color(0xFF4285F4)),
              ),
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
