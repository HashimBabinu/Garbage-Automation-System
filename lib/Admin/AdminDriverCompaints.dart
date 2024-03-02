import 'package:flutter/material.dart';

class DriverComplaints extends StatefulWidget {
  const DriverComplaints({super.key});

  @override
  State<DriverComplaints> createState() => _DriverComplaintsState();
}

class _DriverComplaintsState extends State<DriverComplaints> {
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
                  
                  return Card(
                    elevation: 5,
                    color: Color.fromARGB(255, 255, 255, 255),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          children: [
                            Text(
                                'I would like to report a missed waste pickup for my household located at marutha. Our scheduled pickup day was 17/03/2000, but unfortunately, the waste collection truck did not pass by our area today. We had placed our bins out on time according to the schedule provided by the municipality, but it seems they were not collected'),
                           SizedBox(height: 20,),
                           Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xFF3DE07E)),
                                child: Text(
                                  'Reply',
                                  style: TextStyle(color: Colors.black),
                                )),
                          ],
                        ),
                          ],
                        ),
                      ),
                      
                    
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
