import 'package:flutter/material.dart';
import 'package:flutter_application_4/Public/PublicEditProfile.dart';
import 'package:flutter_application_4/Public/PublicNavigationbar.dart';
import 'package:flutter_application_4/Public/publichome.dart';

class Userprofile extends StatefulWidget {
  const Userprofile({super.key});

  @override
  State<Userprofile> createState() => _UserprofileState();
}

class _UserprofileState extends State<Userprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(fit: StackFit.expand, children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(bottom: 400),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('picture/userprofile2.png'),
              fit: BoxFit.fitWidth,
            ), 
          ),
        ),
      ),
      Column(
        children: [
         Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return PublicNavigation();
                    },));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                         Icon(Icons.arrow_back),
                      ),
                    ),
                  ),
                ),
                Center(
                    child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'picture/logo.png',
                      width: 200,
                      height: 200,
                    ),
                  ),
                )),
                Icon(Icons.logout)
              ],
            ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PublicEdit();
              },));
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 200,top: 100),
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
                Text('user name',style: TextStyle(fontWeight: FontWeight.bold),),
                Text('address',style: TextStyle(fontWeight: FontWeight.bold),),
                Text('ph_no',style: TextStyle(fontWeight: FontWeight.bold),),
                Text('mail id',style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
          ),
        ],
      ),
    ]));
  }
}
