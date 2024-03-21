import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/Public/PublicProduct.dart';
import 'package:flutter_application_4/RecycleTeam/RecycleNavigation.dart';
import 'package:responsive_grid/responsive_grid.dart';

class AddedItem extends StatefulWidget {
  const AddedItem({super.key});

  @override
  State<AddedItem> createState() => _AddedItemState();
}

class _AddedItemState extends State<AddedItem> {
   Future<List<DocumentSnapshot>> getData() async {
    try {
      final QuerySnapshot snapshot = await FirebaseFirestore.instance
          .collection('Product')
          .get();
      print('Fetched ${snapshot.docs.length} documents');
      return snapshot.docs;
    } catch (e) {
      print('Error fetching data: $e');
      throw e; // Rethrow the error to handle it in the FutureBuilder
    }
  }
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
      
            Expanded(
            child: FutureBuilder(//backend
            future: getData(),
            builder: (context, AsyncSnapshot<List<DocumentSnapshot>> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else {
                List<DocumentSnapshot>? data = snapshot.data;
                if (data != null) {
                  return ResponsiveGridList(
                    desiredItemWidth: 100,
                    minSpacing: 10,
                    children: List.generate(data.length, (index) {
                      String imageURL = data[index].get('image_url') ?? '';
                      return InkWell(onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) {
                          return PublicProduct( img:imageURL,name:data[0]['Product Name'],
              des:data[0]['Description'],
              price:data[0]['price']);
                        },));
                      },child:
                      
                      
                       Image.network(imageURL));
                    }).toList(),
                  );
                } else {
                  return Center(child: Text('No data available.'));
                }
              }
            },
                          ),
          )
      
        ],
      ),
    );
  }
}