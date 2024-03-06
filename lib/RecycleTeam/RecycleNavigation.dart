import 'package:flutter/material.dart';
import 'package:flutter_application_4/RecycleTeam/RecycleTeamItem.dart';
import 'package:flutter_application_4/RecycleTeam/recyclehome.dart';

class RecycleNavigation extends StatefulWidget {
  const RecycleNavigation({super.key});

  @override
  State<RecycleNavigation> createState() => _RecycleNavigationState();
}

class _RecycleNavigationState extends State<RecycleNavigation> {
   int _selectedIndex = 0;
  static const List<dynamic> _widgetoptions = [
    Recycle(),
    AddedItem()

    
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetoptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
           
          items: [
            BottomNavigationBarItem(
              backgroundColor: Color(0xFF3DE07E),
                icon: Icon(
                  Icons.home,
                  color: Colors.black87,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.production_quantity_limits,
                  color: Colors.black87,
                ),
                label: 'Items'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.logout,
                  color: Colors.black87,
                ),
                label: 'Logout')          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: const Color.fromARGB(255, 0, 0, 0),
          iconSize: 20,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}