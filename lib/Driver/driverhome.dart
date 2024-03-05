import 'package:flutter/material.dart';
import 'package:flutter_application_4/Driver/DriverNotification.dart';
import 'package:flutter_application_4/Driver/driverprofile.dart';
import 'package:flutter_application_4/Driver/userindriver.dart';

class Driver extends StatefulWidget {
  const Driver({super.key});

  @override
  State<Driver> createState() => _DriverState();
}

class _DriverState extends State<Driver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body:  Column(
        children: [
           Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return DriverProfile();
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
                    return DriverNotification();
                  },));
                },
                  child: Container(child: Icon(Icons.message)
                  ),
                )
              ],
            ),
             Row(
               children: [
                 Icon(Icons.settings_backup_restore,size: 50,),
                 Text('Status',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 34),),
               ],
             ),
            
    Divider(                           //Divider
      color: Colors.black, 
      height: 20, 
      thickness: 1, 
      indent: 0, 
      endIndent: 0, 
    ),
     SizedBox(height: 35),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [            
                           InkWell(onTap: () {
                             Navigator.push(context,MaterialPageRoute(builder: (context) {
                               return Userd();
                             },));
                           },
                             child: Container(
                               child: Row(
                                 children: [
                                   Padding(
                                     padding: const EdgeInsets.only(left: 60),
                                     child: Text('view users', style: TextStyle(
                                        color: Colors.black, 
                                        fontSize: 30,fontWeight: FontWeight.bold 
                                      ),),
                                   ),
                                    Container(child: Icon(Icons.keyboard_arrow_down)),
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

       

        ],
      ),

    );
  }
}