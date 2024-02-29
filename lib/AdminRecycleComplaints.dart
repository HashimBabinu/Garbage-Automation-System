import 'package:flutter/material.dart';

class RecycleComplaints extends StatefulWidget {
  const RecycleComplaints({super.key});

  @override
  State<RecycleComplaints> createState() => _RecycleComplaintsState();
}

class _RecycleComplaintsState extends State<RecycleComplaints> {
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
                    padding: const EdgeInsets.only(left: 45, top: 7),
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
                  padding: const EdgeInsets.only(left: 22, top: 7),
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
          Expanded(
            child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  // return Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Container(
                  //     child: Text(
                  //         'I would like to report a missed waste pickup for my household located at marutha. Our scheduled pickup day was 17/03/2000, but unfortunately, the waste collection truck did not pass by our area today. We had placed our bins out on time according to the schedule provided by the municipality, but it seems they were not collected'),
                  //     // width: 100,
                  //     // height: 150,
                  //     decoration: BoxDecoration(
                  //         color: Colors.white,
                  //         border: Border.all(color: Colors.black, width: 1),
                  //         borderRadius: BorderRadius.circular(10),
                  //         ),

                  //   ),

                  // );
                  return Card(
                    elevation: 5,
                    color: Color.fromARGB(255, 255, 255, 255),
                    child: ListTile(
                      title: Text(
                          'Complaint against recycle team'),
                      trailing: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xFF3DE07E)),
                          child: Text(
                            'Reply',
                            style: TextStyle(color: Colors.black),
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