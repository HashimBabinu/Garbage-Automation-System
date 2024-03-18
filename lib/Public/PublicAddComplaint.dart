import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/Public/PublicComplaints.dart';
import 'package:flutter_application_4/Public/PublicNavigationbar.dart';
import 'package:flutter_application_4/Public/publichome.dart';

class PublicAddComplaint extends StatefulWidget {
  const PublicAddComplaint({super.key});

  @override
  State<PublicAddComplaint> createState() => _PublicAddComplaintState();
}

class _PublicAddComplaintState extends State<PublicAddComplaint> {
  var Complaint = TextEditingController();
  var title=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return PublicComplaint();
                      },
                    ));
                  },
                  child: Container(child: Icon(Icons.arrow_back))),
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
          Row(
            children: [
              Text(
                'Title:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          TextFormField(
            controller: title,
            decoration:
                InputDecoration(border: UnderlineInputBorder(), hintText: ''),
          ),
          Text(''),
          TextFormField(
            controller: Complaint,
            maxLines: null,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'Add Complaint'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () async {
                    await FirebaseFirestore.instance
                        .collection('Complaints')
                        .add({'title':title.text,'complaint': Complaint.text});
                  },
                  child: Text(
                    'Add',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'Reply:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
