import 'package:flutter/material.dart';
import 'package:flutter_application_4/Public/PublicNavigationbar.dart';
import 'package:flutter_application_4/Public/PublicNotification.dart';
import 'package:flutter_application_4/Public/registration.dart';
import 'package:flutter_application_4/Public/userprofile.dart';
import 'package:image_picker/image_picker.dart';

class Sample extends StatefulWidget {
  const Sample({super.key});

  @override
  State<Sample> createState() => _SampleState();
  
  pickImage({required ImageSource source}) {}
}

class _SampleState extends State<Sample> {
  var profileImage;
  String?_imageUrl;
  Future<void>pickImage()async{
    final picker=Sample();
    final PickedFile=await picker.pickImage(source:ImageSource.gallery);

    if(PickedFile !=null){
      setState(() {
        _imageUrl=PickedFile.path;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body: Column(
        
        children: [
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Userprofile();
                    },));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                         Icon(Icons.person),
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
                InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return PublicNotification();
                  },));
                },
                  child: Container(child: Icon(Icons.notifications)
                  ),
                ),
              ],
            ),
          GridView.count(
            crossAxisCount: 2,
            children: [
              Image.asset('picture/basket.webp'),
              Image.asset('picture/box.jpg'),
              Image.asset('picture/can.jpg'),
              Image.asset('picture/glass jar.jpg'),
            ],
          ),
        ],
      ),
    );
  }
}
