import 'package:flutter/material.dart';
import 'package:flutter_application_4/Public/OrderVerified.dart';
import 'package:flutter_application_4/Public/PublicNavigationbar.dart';
import 'package:flutter_application_4/Public/publichome.dart';

class PublicCart extends StatefulWidget {
  const PublicCart({super.key});

  @override
  State<PublicCart> createState() => _PublicCartState();
}

class _PublicCartState extends State<PublicCart> {
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
              InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PublicNavigation();
                },));
              },
                child: Container(child: Icon(Icons.arrow_back)
              )
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
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Image.asset('picture/stick note.png'),
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
                      Text('2nd street,townsquare,mavoor,'),
                      Text('Pin-678833,'),
                      Text('9999999999,'),
                      Text('user@gmail.com'),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        children: [
                          Text(
                            'Product Name:',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('Sticky Note'),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Order id:',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('12e23'),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Order Time:',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('12/3/2023'),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Delivery Time:',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('16/03/2023'),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Quantity:',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('1'),
                        ],
                      )
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
                    border: Border.all(
                        color: const Color.fromARGB(255, 255, 255, 255)),
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
                      Text('₹ 10'),
                      InkWell(onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) {
                          return OrderVerified();
                        },));
                      },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                              color: Colors.yellow, child: Text('Continue')),
                        ),
                      )
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
