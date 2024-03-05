import 'package:flutter/material.dart';
import 'package:flutter_application_4/Driver/driverhome.dart';
import 'package:flutter_application_4/Driver/recycleteamindriver.dart';

class DriverNavigation extends StatefulWidget {
  const DriverNavigation({super.key});

  @override
  State<DriverNavigation> createState() => _DriverNavigationState();
}

class _DriverNavigationState extends State<DriverNavigation> {
  int _selectedIndex=0;
    static const List<dynamic>_widgetoptions=[ 
      Recycled(),
      Driver(),

     
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
  BottomNavigationBarItem(icon: Icon(Icons.recycling_rounded,color: Colors.black87,),label: 'Recycle Team'),

  BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black87,),label: 'Home'),

  BottomNavigationBarItem(icon: Icon(Icons.logout,color: Colors.black87,),label: 'Warning')
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