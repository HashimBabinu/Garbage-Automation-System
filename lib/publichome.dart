import 'package:flutter/material.dart';

class Public extends StatefulWidget {
  const Public({super.key});

  @override
  State<Public> createState() => _PublicState();
}

class _PublicState extends State<Public> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0), // Adjust padding as needed
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black), // Add border for better visibility
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.person),
                  ),
                ),
              ),
          
            Center(child: Container(
              child: Image.asset('picture/logo.png',
               width:200, 
               height:200,),
            )),
            ],

            
          ),
        Container(child: Padding(
          padding: const EdgeInsets.only(right: 335),
          child: Text('Products:',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
        )),
        Text('_____________________________________________________________________________'),
        Row(
          children: [
            Container(child: Padding(
              padding: const EdgeInsets.all(8.0 ),
              child: SizedBox(height:200,width:200, child:Image.asset('picture/stick note.png')),

            )),
             Container(child: Padding(
          padding: const EdgeInsets.only(left:30),
          child: SizedBox(height:150,width: 150,child: Image.asset('picture/glass jar.jpg')),
        )),
        
            
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(child: SizedBox(height:200,width:200,child: Image.asset('picture/can.jpg'))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(child: SizedBox(height:150,width:175,child: Image.asset('picture/box.jpg'))),
            ),

          ],

        ),

        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(child: SizedBox(height:200,width:200,child: Image.asset('picture/papper bag.jpg'))),
            ),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(child: SizedBox(height:150,width:175,child: Image.asset('picture/foodwaste.jpg'))),
            ),


            ],

        ),

       


        ],
      ),
    );
  }
}