import 'package:flutter/material.dart';
import 'package:flutter_application_4/Admin/AdminComplaints.dart';
import 'package:flutter_application_4/Admin/AdminHome.dart';
import 'package:flutter_application_4/Admin/AdminWarningMessage.dart';

class AdminNavigation extends StatefulWidget {
  const AdminNavigation({super.key});

  @override
  State<AdminNavigation> createState() => _AdminNavigationState();
}

class _AdminNavigationState extends State<AdminNavigation> {
   int _selectedIndex=0;
    static const List<dynamic>_widgetoptions=[ 
      AdminComplaint(),
      AdminHome(),
      AdminWarning()
  ];
  void _onItemTapped(int index){ 
    setState((){
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     
      body: Center(child:_widgetoptions.
      elementAt(_selectedIndex),),
bottomNavigationBar: BottomNavigationBar(backgroundColor: Color(0xFF3DE07E),items: [
  BottomNavigationBarItem(icon: Icon(Icons.report,color: Colors.black87,),label: 'Complaints'),

  BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black87,),label: 'Home'),

  BottomNavigationBarItem(icon: Icon(Icons.system_security_update_warning_outlined,color: Colors.black87,),label: 'Warning')
],
type: BottomNavigationBarType.shifting,
currentIndex: _selectedIndex,
selectedItemColor: const Color.fromARGB(255, 0, 0, 0),
iconSize: 20,
onTap: _onItemTapped,
elevation: 5
),
    );
  }
}