import 'package:flutter/material.dart';
import 'package:flutter_application_4/Public/PublicCart.dart';
import 'package:flutter_application_4/Public/PublicNavigationbar.dart';
import 'package:flutter_application_4/Public/publichome.dart';
import 'package:flutter_application_4/Public/userprofile.dart';

class PublicProduct extends StatefulWidget {
  var name;
  var img;
  var des;
  var price;
   PublicProduct({super.key, required this. img,required this.name,required this.des,required this.price});//backend

  @override
  State<PublicProduct> createState() => _PublicProductState();
}

class _PublicProductState extends State<PublicProduct> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return PublicNavigation();
                  },));
                },
                  child: Container(child: Icon(Icons.arrow_back)
                )
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
            Container(
              
               
                child: widget.img != null
                            ? Image.network(widget.img, fit: BoxFit.cover)
                            : Icon(Icons.image),
                            ),
            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: Text(
                widget.name ?? 'name not available',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ), 
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(color: Colors.white)),
                child: Text(
                  widget.des??'description not available',//backend 
                  style: TextStyle(fontStyle: FontStyle.italic)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: Text(widget.price??'price not available'),//backend 
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Row(
                children: [
                  InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return PublicCart(imageUrl: widget.img, name: null, productId: '', productName: '',);
                    },));
                  },
                    child: Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Color(0xFF3DE07E),
                            border: Border.all(color: const Color.fromARGB(255, 0, 0, 0))),
                        child: Center(
                          child: Text(
                            'Buy',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)
                          ),
                        ),
                      ),
                  ),
                    InkWell(onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) {
                        return PublicNavigation();
                      },));
                    },
                      child: Container(
                        height: 50,
                        width:210,
                        decoration: BoxDecoration(
                            color: Color(0xFF3DE07E),
                            border: Border.all(color: const Color.fromARGB(255, 0, 0, 0))),
                        child: Center(
                          child: Text(
                            'Cancel',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
        
          ],
        ),
      ),
    );
  }
}
