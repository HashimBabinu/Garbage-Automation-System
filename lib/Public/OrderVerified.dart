import 'package:flutter/material.dart';
import 'package:flutter_application_4/Public/PublicCart.dart';

class OrderVerified extends StatefulWidget {
  const OrderVerified({super.key});

  @override
  State<OrderVerified> createState() => _OrderVerifiedState();
}

class _OrderVerifiedState extends State<OrderVerified> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) {
                  return PublicCart();
                },));
              },
                child: Stack(
                  children: [
                    
                    Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                ),
                    ),
                   
                    Positioned.fill(
                child: Align(
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 80,
                  ),
                ),
                    ),
                    
                    Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      'Order Verified',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),

    );
}
}