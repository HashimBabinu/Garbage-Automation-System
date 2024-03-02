import 'package:flutter/material.dart';
import 'package:flutter_application_4/Driver/DegradableInDriver.dart';

class DriverBio extends StatefulWidget {
  const DriverBio({super.key});

  @override
  State<DriverBio> createState() => _DriverBioState();
}

class _DriverBioState extends State<DriverBio> {
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
              Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 80),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25,top: 7),
                    child: Text(
                      'BioDegradable',
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
                  padding: const EdgeInsets.only(left: 33,top: 7),
                  child: InkWell(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return DriverDegradable();
                    },));},
                    child: Text(
                      'Degradable',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.black),
                    ),
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
          Expanded(
            child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 5,
                      color: Color.fromARGB(255, 35, 188, 94),
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            title: Text(
                              'GreenCycle Solutions', 
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    
                                    Text('Town square,vazhikkadavu',
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.w600)),
                                    Text('04931 000000',
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic)),
                                            Text('user@gmail.com',
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic)),
                                  ],
                                ),
                              ],
                            ),
                            
                          )),
                    ),
                  );
                }),
          ),
 
        ],
      ),
    );
  }
}