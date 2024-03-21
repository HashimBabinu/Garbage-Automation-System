
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/Public/OrderVerified.dart';
import 'package:flutter_application_4/Public/PublicNavigationbar.dart';
import 'package:flutter_application_4/Public/publichome.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PublicCart extends StatefulWidget {//backend
  final String imageUrl;
  final String productId;
  final String productName;

  PublicCart({Key? key, required this.imageUrl, required this.productId, required this.productName, required name}) : super(key: key);
  
  get price => null;

  @override
  State<PublicCart> createState() => _PublicCartState();
}

class _PublicCartState extends State<PublicCart> {
  String userName = '';
  String userAddress = '';
  String userPhone = '';
  var id;
  String userEmail = '';

  @override
  void initState() {
    super.initState();
    getUserDetails();
  }

  Future<void> getUserDetails() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
            id = prefs.getString('uid') ?? '';

      userName = prefs.getString('name') ?? '';
      userAddress = prefs.getString('address') ?? '';
      userPhone = prefs.getString('phone number') ?? '';
      userEmail = prefs.getString('mail id') ?? '';
    });

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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return PublicNavigation();
                        }));
                      },
                      child: Container(child: Icon(Icons.arrow_back)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 90),
                      child: Container(
                          child: SizedBox(
                              height: 200,
                              width: 200,
                              child: Image.network('picture/logo.png'))),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Image.network(widget.imageUrl),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Delivery to:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(id),
                      Text(userAddress),
                      Text(userPhone),
                      Text(userEmail),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        children: [
                          Text(
                            'Product Name:',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(widget.productName),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Order id:',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(widget.productId),
                        ],
                      ),
                      // You can display other product information here
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'only cash on delivery is available',
                  style: TextStyle(fontSize: 10),
                ),
                Container(
                  height: 20,
                  width: 410,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(color: const Color.fromARGB(255, 255, 255, 255)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 72, 72, 72).withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 1,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.price??'price not available'),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return OrderVerified();
                          }));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(color: Colors.yellow, child: Text('Continue')),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

