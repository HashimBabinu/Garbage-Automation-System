import 'package:flutter/material.dart';

class Userd extends StatefulWidget {
  const Userd({super.key});

  @override
  State<Userd> createState() => _UserdState();
}

class _UserdState extends State<Userd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Icon(Icons.arrow_back),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Container(
                    child: SizedBox(
                        height: 200,
                        width: 200,
                        child: Image.asset('picture/logo.png'))),
              ),
            ],
          ),
           ListView.builder(
            itemCount: 10,
      itemBuilder: (context, index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 5,
            color: Color.fromARGB(255, 35, 188, 94),child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {},
              child: Text('Name')),
          ),),
        );

      }


           )
         
        ],
      ),
    );
  }
}