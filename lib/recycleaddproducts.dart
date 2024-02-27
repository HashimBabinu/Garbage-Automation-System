import 'package:flutter/material.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        children: [
          Row(
                children: [
                 
                  Padding(
                    padding: const EdgeInsets.only(bottom: 200),
                    child: Container(child: Icon(Icons.arrow_back,size: 30,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 200,left: 70),
                    child: SizedBox(
                        child: Container(
                            child: Image.asset(
                      'picture/logo.png',
                      height: 200,
                      width: 200,
                    ))),
                  ),
                   Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Padding(
                        padding: const EdgeInsets.only(right: 200),
                        child: Container(child: SizedBox(child: Image.asset('picture/papper cup.png',height: 100,width: 100,))),
                                         ),
                     ],
                   ),
                  
                ],
              ),

        ],
      ),
    );
  }
}