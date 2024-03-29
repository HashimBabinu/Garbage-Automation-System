import 'package:flutter/material.dart';
import 'package:flutter_application_4/Public/userprofile.dart';

class Mynavigationbar extends StatefulWidget {
  const Mynavigationbar({super.key});

  @override
  State<Mynavigationbar> createState() => _MynavigationbarState();
}

class _MynavigationbarState extends State<Mynavigationbar> {

  int _selectedIndex=0;

  static const List<dynamic>_widgetoptions=[
    Userprofile()
    

  ];

  void _onItemTapped(int index){ 
    setState((){
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Image.asset('picture/logo.png')),
        backgroundColor: Color.fromARGB(255, 25, 202, 122),
      ),
      
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon:Icon(Icons.home),
          label:'Home',
          backgroundColor: Color.fromARGB(255, 76, 153, 175)
        ),
        BottomNavigationBarItem(
          icon:Icon(Icons.drive_eta),
          label:'Driver',
          backgroundColor: Color.fromARGB(255, 76, 153, 175)
        ),
        BottomNavigationBarItem(
          icon:Icon(Icons.warning),
          label:'Warning',
          backgroundColor: Color.fromARGB(255, 76, 153, 175)
        ),
        
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 171, 119, 119),
        iconSize: 40,
        onTap: _onItemTapped,
        elevation: 5,),
       
    );


    
  }
}