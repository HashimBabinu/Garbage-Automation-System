import 'package:flutter/material.dart';
import 'package:flutter_application_4/RecycleTeam/RecycleNavigation.dart';

class AddedItem extends StatefulWidget {
  const AddedItem({super.key});

  @override
  State<AddedItem> createState() => _AddedItemState();
}

class _AddedItemState extends State<AddedItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        children: [
          Row( 
                children: [
                  InkWell(onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) {
                      return RecycleNavigation();
                    },));
                  },
                    child: Container(child: Icon(Icons.arrow_back),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 90),
                    child: Container(
                        child: SizedBox(
                            height: 200,
                            width: 200,
                            child: Image.asset('picture/logo.png'))),
                  ),
                ],
              ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(height:200,width: 200,child: Image.asset('picture/Pen box.webp')),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Pen Box',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(height:200,width: 200,child: Image.asset('picture/plastic bag.jpg')),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Plastic Bag',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),

              ],
            ),

        ],
      ),
    );
  }
}