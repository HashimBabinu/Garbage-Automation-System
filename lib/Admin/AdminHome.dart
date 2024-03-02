import 'package:flutter/material.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({super.key});

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
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
                    child: Container(child: (Icon(Icons.logout,size: 30,))),
                  ),
                ],              
              ),
            
             
             Padding(
               padding: const EdgeInsets.only(top: 100),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [            
                             Container(
                               child: Row(
                                 children: [
                                   Padding(
                                     padding: const EdgeInsets.only(left: 60),
                                     child: Text('view users', style: TextStyle(
                                        color: Colors.black, 
                                        fontSize: 30,fontWeight: FontWeight.bold 
                                      ),),
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
             SizedBox(height: 30,),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [            
                             Container(
                               child: Row(
                                 children: [
                                   Padding(
                                     padding: const EdgeInsets.only(left: 60),
                                     child: Text('Approve Driver', style: TextStyle(
                                        color: Colors.black, 
                                        fontSize: 30,fontWeight: FontWeight.bold 
                                      ),),
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
               SizedBox(height: 30,),
               Row(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [            
                           Container(
                             child: Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 10),
                                   child: Text('Approve Recycle Team', style: TextStyle(
                                      color: Colors.black, 
                                      fontSize: 30,fontWeight: FontWeight.bold 
                                    ),),
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

       

        ],
      ),
    );
  }
}