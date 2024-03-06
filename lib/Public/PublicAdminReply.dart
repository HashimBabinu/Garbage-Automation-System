import 'package:flutter/material.dart';
import 'package:flutter_application_4/Public/PublicComplaints.dart';

class PublicAdminReply extends StatefulWidget {
  const PublicAdminReply({super.key});

  @override
  State<PublicAdminReply> createState() => _PublicAdminReplyState();
}

class _PublicAdminReplyState extends State<PublicAdminReply> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         Row(
            children: [
              InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PublicComplaint();
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
          Row(
            children: [
              Text(
                'Title:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Missed Waste Collection'),
              
            ],
          ),
           Divider(                           //Divider
      color: Colors.black, 
      height: 20, 
      thickness: 1, 
      indent: 0, 
      endIndent: 0, 
    ),
          
          Text('I would like to report a missed waste pickup for my household located at marutha. Our scheduled pickup day was 17/03/2000, but unfortunately, the waste collection truck did not pass by our area today. We had placed our bins out on time according to the schedule provided by the municipality, but it seems they were not collected'),
          
         
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Reply:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Text('Dear [username],Thank you for bringing the missed waste pickup to our attention. We sincerely apologize for the inconvenience this has caused you and your household.Upon investigating the matter, we have identified the root cause of the missed pickup and taken immediate steps to rectify the situation.')


        ],
      ),
    );
  }
}