import 'package:flutter/material.dart';
import 'package:flutter_application_4/Public/PublicNotification.dart';
import 'package:flutter_application_4/Public/PublicProduct.dart';
import 'package:flutter_application_4/Public/userprofile.dart';

class Public extends StatefulWidget {
  const Public({super.key});

  @override
  State<Public> createState() => _PublicState(); 
}

class _PublicState extends State<Public> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                
                
            Row(
              children: [
                Column(
                  children: [
                    InkWell(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return PublicProduct();
                      },));
                    },
                      child: Container(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                            height: 200,
                            width: 200,
                            child: Image.asset('picture/stick note.png')),
                      )),
                    ),
                    Text('Stick Note',style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 150,
                          width: 150,
                        child: Padding(
                      padding: const EdgeInsets.only(top: 50),
                      
                          child: Image.asset('picture/jar.png')),
                    ),
                     Padding(
                       padding: const EdgeInsets.only(top: 70),
                       child: Text('Glass Jar',style: TextStyle(fontWeight: FontWeight.bold),),

                     ),
                  ],
                ),
                
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                          child: SizedBox(
                              height: 200,
                              width: 200,
                              child: Image.asset('picture/can.jpg'))),
                              Text('Soda Can',style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                             
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                          child: SizedBox(
                              height: 150,
                              width: 175,
                              child: Image.asset('picture/box.jpg'))),
                               Text('Cardboard Box',style: TextStyle(fontWeight: FontWeight.bold),),
                              
                              
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                          child: SizedBox(
                              height: 200,
                              width: 200,
                              child: Image.asset('picture/papper bag.jpg'))),
                               Text('Papper Bag',style: TextStyle(fontWeight: FontWeight.bold),), 
                    ],
                  ),                            
                          
                ),
                 
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                          child: SizedBox(
                              height: 150,
                              width: 175,
                              child: Image.asset('picture/foodwaste.jpg'))),
                               Text('Vermicompost',style: TextStyle(fontWeight: FontWeight.bold),), 
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
