import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/Public/PublicNotification.dart';
import 'package:flutter_application_4/Public/PublicProduct.dart';
import 'package:flutter_application_4/Public/userprofile.dart';
import 'package:responsive_grid/responsive_grid.dart';


class Public extends StatefulWidget {
  const Public({super.key});

  @override
  State<Public> createState() => _PublicState(); 
}

class _PublicState extends State<Public> {

  
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Userprofile();
                  },));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                       Icon(Icons.person),
                    ),
                  ),
                ),
              ),
              Center(
                  child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'picture/logo.png',
                    width: 200,
                    height: 200,
                  ),
                ),
              )),
              InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PublicNotification();
                },));
              },
                child: Container(child: Icon(Icons.notifications)
                ),
              ),
            ],
          ),
          Container(
              child: Padding(
            padding: const EdgeInsets.only(right: 335),
            child: Text(
              'Products:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
          Text(
              '_____________________________________________________________________________'),
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
