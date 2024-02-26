import 'package:flutter/material.dart';

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
               
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0), 
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black), 
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(height: 50,width: 50,child: Icon(Icons.person)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:40 ),
                    child: Container(child: SizedBox(height: 200,width: 200,child: Image.asset('picture/logo.png'))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 55),
                    child: Container(child: (Icon(Icons.message,size: 30,))),
                  ),
                  
              
               
                ],
          
                
              ),
             Row(
               children: [
                 Icon(Icons.settings_backup_restore,size: 50,),
                 Text('Status',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 34),),
               ],
             ),
             Center(
          child: Container(
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                      'View Users',
                          style: TextStyle(
                            color: Colors.black, 
                            fontSize: 30,fontWeight: FontWeight.bold 
                          ),
                        ),
              ),
            ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(child: Icon(Icons.keyboard_arrow_down_outlined)),
                    )
            
          ],
        ),


        ],
      ),

    );
  }
}