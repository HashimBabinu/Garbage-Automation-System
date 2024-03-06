import 'package:flutter/material.dart';
import 'package:flutter_application_4/RecycleTeam/RecycleNavigation.dart';
import 'package:flutter_application_4/RecycleTeam/RecycleProfileEdit.dart';

class RecycleProfile extends StatefulWidget {
  const RecycleProfile({super.key});

  @override
  State<RecycleProfile> createState() => _RecycleProfileState();
}

class _RecycleProfileState extends State<RecycleProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(fit: StackFit.expand, children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(bottom: 400),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('picture/recycle profile.jpg'),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ),
      Column(
        children: [
          Row( 
            children: [
              InkWell(onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) {
                  return RecycleNavigation();
                },));
              },
                child: Container(child: Icon(Icons.arrow_back)
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 90),
                child: Container(
                    child: SizedBox(
                        height: 200,
                        width: 200,
                        child: Image.asset('picture/logo.png'))),
              ),
            ],
          ),
          InkWell(onTap: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) {
              return RecycleProfileEdit();
            },));
          },
            child: Padding(
              padding: const EdgeInsets.only(top: 100,right: 250),
              child: SizedBox(
                height: 120,
                width: 100,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                        height: 100, width: 100, child: Icon(Icons.person)),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 250),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Company Name:',style: TextStyle(fontWeight: FontWeight.bold),),
                
                Text('Number:',style: TextStyle(fontWeight: FontWeight.bold),),
                Text('Mail id:',style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
          ),
        ],
      ),
    ]));;;
  }
}