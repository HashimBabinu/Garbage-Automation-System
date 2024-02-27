import 'package:flutter/material.dart';

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
            children: [
             
              Padding(
                padding: const EdgeInsets.only(bottom: 200,left: 100),
                child: SizedBox(
                    child: Container(
                        child: Image.asset(
                  'picture/logo.png',
                  height: 200,
                  width: 200,
                ))),
              ),
               Padding(
                padding: const EdgeInsets.only(bottom: 250,left: 60),
                child: Container(child: Icon(Icons.notifications,size: 30,)),
              ),
            ],
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [            
                           Container(
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
                         
                         
               ],
             ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [            
                             Container(
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
                           
                           
                 ],
                             ),
              ),
        ],
      ),

    );
  }
}
