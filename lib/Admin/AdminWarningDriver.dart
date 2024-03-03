import 'package:flutter/material.dart';

class AdminWarningDriver extends StatefulWidget {
  const AdminWarningDriver({super.key});

  @override
  State<AdminWarningDriver> createState() => _AdminWarningDriverState();
}

class _AdminWarningDriverState extends State<AdminWarningDriver> {
  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 80),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 45,top: 7),
                    child: Text(
                      'Driver',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.black),
                    ),
                  ),
                  width: 123,
                  height: 34,
                  decoration: BoxDecoration(
                      color: Color(0xFF3DE07E),
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(10)),
                
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 22,top: 7),
                  child: Text(
                    'Recycle Team',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.black),
                  ),
                ),
                width: 123,
                height: 34,
                decoration: BoxDecoration(
                    color: Color(0xFF3DE07E),
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(10)),
                    

              ),

            ],
          ),
          Container(child: Text('')),Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(maxLines: null,
              decoration:InputDecoration(hintText: ('type complaint'),
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