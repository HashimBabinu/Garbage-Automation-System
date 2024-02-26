import 'package:flutter/material.dart';
import 'package:flutter_application_4/driverhome.dart';
import 'package:flutter_application_4/login.dart';
import 'package:flutter_application_4/loginadmin.dart';
import 'package:flutter_application_4/logindriver.dart';
import 'package:flutter_application_4/loginrecycle.dart';
import 'package:flutter_application_4/navigationbar.dart';
import 'package:flutter_application_4/publichome.dart';
import 'package:flutter_application_4/registration.dart';
import 'package:flutter_application_4/registrationdriver.dart';
import 'package:flutter_application_4/registrationrecycle.dart';
import 'package:flutter_application_4/sample.dart';
import 'package:flutter_application_4/userprofile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Driver(),
    );
  }
}

