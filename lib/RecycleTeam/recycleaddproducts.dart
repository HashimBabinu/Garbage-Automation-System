import 'package:flutter/material.dart';
import 'package:flutter_application_4/RecycleTeam/RecycleNavigation.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        children: [
          
           Row(
            children: [
              InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return RecycleNavigation();
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
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(height: 200,
             width: 300,
               decoration: BoxDecoration(border: Border.all()
             ),
             child: Image.asset('picture/basket.webp'),
             ),
             
           ), 
          
          
          Text(''),
          TextFormField(
            decoration: InputDecoration(border: UnderlineInputBorder(),hintText: ('Product Name')),
          ),
          Text('Discription'),TextFormField(
            decoration: InputDecoration(border: OutlineInputBorder(),hintText: ('add descrition')),
          ),
          Text(''),TextFormField(
            decoration: InputDecoration(border: OutlineInputBorder(),hintText: ('add price')),

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                                    onPressed: () {
                                     
                                    },
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xFF3DE07E)),
                                    child: Text(
                                      'Add',
                                      style: TextStyle(color: Colors.black),
                                    )),
            ],
          ),

        ],
      ),
    );
  }
}
