import 'package:flutter/material.dart';
import 'package:flutter_application_4/AdminApproveDriver.dart';
import 'package:flutter_application_4/AdminApproveRecycle.dart';
import 'package:flutter_application_4/AdminBiodegradable.dart';
import 'package:flutter_application_4/AdminComplaints.dart';
import 'package:flutter_application_4/AdminDegradable.dart';
import 'package:flutter_application_4/AdminHome.dart';
import 'package:flutter_application_4/AdminRecycleComplaints.dart';
import 'package:flutter_application_4/AdminViewUsers.dart';
import 'package:flutter_application_4/AdminWarningDriver.dart';
import 'package:flutter_application_4/AdminWarningMessage.dart';
import 'package:flutter_application_4/Recycleteamnotification.dart';
import 'package:flutter_application_4/Recycleteamorder.dart';
import 'package:flutter_application_4/Recycleteamprofile.dart';
import 'package:flutter_application_4/adminprofile.dart';
import 'package:flutter_application_4/driverhome.dart';
import 'package:flutter_application_4/driverprofile.dart';
import 'package:flutter_application_4/login.dart';
import 'package:flutter_application_4/loginadmin.dart';
import 'package:flutter_application_4/logindriver.dart';
import 'package:flutter_application_4/loginrecycle.dart';
import 'package:flutter_application_4/navigationbar.dart';
import 'package:flutter_application_4/publichome.dart';
import 'package:flutter_application_4/recycleaddproducts.dart';
import 'package:flutter_application_4/recyclehome.dart';
import 'package:flutter_application_4/registration.dart';
import 'package:flutter_application_4/registrationdriver.dart';
import 'package:flutter_application_4/registrationrecycle.dart';
import 'package:flutter_application_4/sample.dart';
import 'package:flutter_application_4/userindriver.dart';
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
      home:AdminWarningDriver(),
    );
  }
}

