import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class Wid extends StatefulWidget {
  const Wid({super.key});

  @override
  State<Wid> createState() => _WidState();
}

class _WidState extends State<Wid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:ResponsiveGridList(
        desiredItemWidth: 100,
        minSpacing: 10,
        children: List.generate(20, (index)=> index+1).map((i) {
          return Container(
            height: 100,
            alignment: Alignment(0, 0),
            color: Colors.cyan,
            child: Text(i.toString()),
          );
        }).toList()
    )
);
    
  }
}