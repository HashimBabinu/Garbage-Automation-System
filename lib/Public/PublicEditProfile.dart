import 'package:flutter/material.dart';

class PublicEdit extends StatefulWidget {
  const PublicEdit({super.key});

  @override
  State<PublicEdit> createState() => _PublicEditState();
}

class _PublicEditState extends State<PublicEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
body:  Column(
  children: [
    Row(
                children: [
                  Icon(Icons.arrow_back),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
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
                  Container(height: 100,width: 100,
                    decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all()),
                    child: Icon(Icons.person,size: 50,),
                  ),
                ],
              ),
              Text(''),TextFormField(decoration: InputDecoration(border: UnderlineInputBorder(),hintText: ' Name'),),
              Text(''),TextFormField(decoration: InputDecoration(border: UnderlineInputBorder(),hintText: 'Address'),),
              Text(''),TextFormField(decoration: InputDecoration(border: UnderlineInputBorder(),hintText: 'ph-no'),),
              Text(''),TextFormField(decoration: InputDecoration(border: UnderlineInputBorder(),hintText: 'mail id'),),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: (){}, child: Text('Edit',style: TextStyle(color: Colors.black),)),
                  ),
                ],
              ),


  ],
),
    );
  }
}