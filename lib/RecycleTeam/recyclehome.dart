import 'package:flutter/material.dart';
import 'package:flutter_application_4/RecycleTeam/RecycleNavigation.dart';
import 'package:flutter_application_4/RecycleTeam/Recycleteamnotification.dart';
import 'package:flutter_application_4/RecycleTeam/Recycleteamorder.dart';
import 'package:flutter_application_4/RecycleTeam/Recycleteamprofile.dart';
import 'package:flutter_application_4/RecycleTeam/recycleaddproducts.dart';

class Recycle extends StatefulWidget {
  const Recycle({super.key});

  @override
  State<Recycle> createState() => _RecycleState();
}

class _RecycleState extends State<Recycle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return RecycleProfile();
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
                    return RecycleNotification();
                  },));
                },
                  child: Container(child: Icon(Icons.notifications)
                  ),
                )
              ],
            ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [            
                           InkWell(onTap: () {
                             Navigator.push(context,MaterialPageRoute(builder: (context) {
                               return AddProduct();
                             },));
                           },
                             child: Container(
                               child: Row(
                                 children: [
                                   Padding(
                                     padding: const EdgeInsets.only(left: 60),
                                     child: Text('Add Products', style: TextStyle(
                                        color: Colors.black, 
                                        fontSize: 20,fontWeight: FontWeight.bold 
                                      ),),
                                   ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 30),
                                      child: Container(child: Icon(Icons.add)),
                                    ), 
                                 ],
                               ),
                               
                               width: 273, 
                               height: 57, 
                               decoration: BoxDecoration(
                                               color: const  Color(0xFF3DE07E),
                                               border: Border.all(
                                                 color: Colors.black, 
                                                 width: 2, 
                                               ),
                                               borderRadius: BorderRadius.circular(10)
                               ),
                             ),
                           ),
                         
                         
               ],
             ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [            
                             InkWell(onTap: () {
                               Navigator.push(context,MaterialPageRoute(builder: (context) {
                                 return Order();
                               },));
                             },
                               child: Container(
                                 child: Row(
                                   children: [
                                     Padding(
                                       padding: const EdgeInsets.only(left: 60),
                                       child: Text('View Orders', style: TextStyle(
                                          color: Colors.black, 
                                          fontSize: 20,fontWeight: FontWeight.bold 
                                        ),),
                                     ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 30),
                                        child: Container(child: Icon(Icons.menu_rounded)),
                                      ),
                                   ],
                                 ),
                                 
                                 width: 273, 
                                 height: 57, 
                                 decoration: BoxDecoration(
                                                   color: const  Color(0xFF3DE07E),
                                                   border: Border.all(
                                                     color: Colors.black, 
                                                     width: 2, 
                                                   ),
                                                   borderRadius: BorderRadius.circular(10)
                                 ),
                               ),
                             ),
                           
                           
                 ],
                             ),
              ),
        ],
      ),

    );
  }
}
