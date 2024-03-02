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
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,size: 30,), 
      ),
      body: Column(
        children: [
          
          SizedBox(
              height: 250,
              width: 250,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 110),
                child: Image.asset('picture/logo.png'),
              )),
          SizedBox(
              height: 300,
              width: 300,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 100),
                child: Image.asset('picture/jar.png'),
              )),
          Text(''),
          TextFormField(
            decoration: InputDecoration(border: UnderlineInputBorder(),hintText: ('Product Name')),
          ),
          Text('Dercription'),TextFormField(
            decoration: InputDecoration(border: OutlineInputBorder(),hintText: ('add descrition')),
          ),
          Text(''),TextFormField(
            decoration: InputDecoration(border: OutlineInputBorder(),hintText: ('add price')),

          )

        ],
      ),
    );
  }
}
