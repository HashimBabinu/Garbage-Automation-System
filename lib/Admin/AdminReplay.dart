import 'package:flutter/material.dart';

class AdminReplay extends StatefulWidget {
  const AdminReplay({super.key});

  @override
  State<AdminReplay> createState() => _AdminReplayState();
}

class _AdminReplayState extends State<AdminReplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
         children: [
           Row( 
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Container(
                        child: SizedBox(
                            height: 200,
                            width: 200,
                            child: Image.asset('picture/logo.png'))),
                  ),
                ],
              ),
              Container(child: Text('')),Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(maxLines: null,
              decoration:InputDecoration(hintText: ('reply'),
              border: OutlineInputBorder()),
              
            ),
          ),
          Align(alignment:Alignment.bottomRight ,
          child: ElevatedButton(onPressed: (){},
          style: ElevatedButton.styleFrom(
                              primary: Color(0xFF3DE07E)), child: Text('sent',
                              style: TextStyle(color: Colors.black),))),
         ],
       ),
          
    );
  }
}