import 'package:flutter/material.dart';
import 'package:flutter_application_4/Public/PublicComplaints.dart';
import 'package:flutter_application_4/Public/PublicDriver.dart';
import 'package:flutter_application_4/Public/publichome.dart';

class PublicNavigation extends StatefulWidget {
  const PublicNavigation({super.key});

  @override
  State<PublicNavigation> createState() => _PublicNavigationState();
}

class _PublicNavigationState extends State<PublicNavigation> {
   int _selectedIndex=0;
    static const List<dynamic>_widgetoptions=[ 
      PublicDriver(),
      Public(),
      PublicComplaint()
      
     
  ]; 
  void _onItemTapped(int index){ 
    setState((){
      _selectedIndex=index;
    });
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Center(child:_widgetoptions.
      elementAt(_selectedIndex),),
bottomNavigationBar: BottomNavigationBar(backgroundColor: Color(0xFF3DE07E),items: [
  BottomNavigationBarItem(icon: Icon(Icons.drive_eta_rounded,color: Colors.black87,),label: 'Driver'),

  BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black87,),label: 'Home'),

  BottomNavigationBarItem(icon: Icon(Icons.info_outlined,color: Colors.black87,),label: 'Report'),
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