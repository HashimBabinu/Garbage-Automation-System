import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, 
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text('Register',style: TextStyle(color:Color(0xFF3DE07E),fontSize:32,fontWeight: FontWeight.bold,),),
          ),
          SizedBox(height:130),
          
          
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 30),
            child: Container(
              child: TextFormField(
              decoration: InputDecoration(border:UnderlineInputBorder(),hintText: ('user_name')),
                      ),
            ),
          ),
          Text(' '),Padding(
            padding: const EdgeInsets.only(left: 30,right: 30),
            child: Container(
              child: TextFormField(
              decoration: InputDecoration(border:UnderlineInputBorder(),hintText: ('adress')),
                      ),
            ),
           ),
           Text(''),Padding(
             padding: const EdgeInsets.only(left: 30,right: 30),
             child: Container(
               child: TextFormField(
                keyboardType: TextInputType.phone,
                decoration:InputDecoration(border: UnderlineInputBorder(),hintText: ('ph_no')) ,
               ),
             ),
           ),
           Text(''),Padding(
             padding: const EdgeInsets.only(left: 30,right: 30),
             child: Container(
               child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(border: UnderlineInputBorder(),hintText: ('mail id')),
               ),
             ),
           ),
           Text(''),Padding(
             padding: const EdgeInsets.only(left: 30,right: 30),
             child: Container(
               child: TextFormField(
                decoration:InputDecoration(border: UnderlineInputBorder(),hintText: ('password')) ,
               ),
             ),
           ),
           Text('Already have account?Login',style: TextStyle(decoration: TextDecoration.underline),),
           Padding(
             padding: const EdgeInsets.only(top:200),
             child: ElevatedButton(onPressed: (){}, child:Text('SIGN UP'),),
           ),


        
    
        ],
      ),
    );
  }
}