import 'package:flutter/material.dart';
import 'package:flutter_application_4/Admin/AdminApproveDriver.dart';
import 'package:flutter_application_4/Admin/AdminApproveRecycle.dart';
import 'package:flutter_application_4/Admin/AdminBiodegradable.dart';
import 'package:flutter_application_4/Admin/AdminComplaints.dart';
import 'package:flutter_application_4/Admin/AdminDegradable.dart';
import 'package:flutter_application_4/Admin/AdminDriverCompaints.dart';
import 'package:flutter_application_4/Admin/AdminHome.dart';
import 'package:flutter_application_4/Admin/AdminRecycleComplaints.dart';
import 'package:flutter_application_4/Admin/AdminReplay.dart';
import 'package:flutter_application_4/Admin/AdminViewUsers.dart';
import 'package:flutter_application_4/Admin/AdminWarningDriver.dart';
import 'package:flutter_application_4/Admin/AdminWarningMessage.dart';
import 'package:flutter_application_4/Admin/AdminWarningRecycle.dart';
import 'package:flutter_application_4/Driver/BiodegradableInDriver.dart';
import 'package:flutter_application_4/Driver/DegradableInDriver.dart';
import 'package:flutter_application_4/Driver/DriverNotification.dart';
import 'package:flutter_application_4/Public/PublicAddComplaint.dart';
import 'package:flutter_application_4/Public/PublicCart.dart';
import 'package:flutter_application_4/Public/PublicComplaints.dart';
import 'package:flutter_application_4/Public/PublicDriver.dart';
import 'package:flutter_application_4/Public/PublicEditProfile.dart';
import 'package:flutter_application_4/Public/PublicNotification.dart';
import 'package:flutter_application_4/Public/PublicProduct.dart';
import 'package:flutter_application_4/RecycleTeam/Recycleteamnotification.dart';
import 'package:flutter_application_4/RecycleTeam/Recycleteamorder.dart';
import 'package:flutter_application_4/RecycleTeam/Recycleteamprofile.dart';
import 'package:flutter_application_4/Admin/adminprofile.dart';
import 'package:flutter_application_4/Driver/driverhome.dart';
import 'package:flutter_application_4/Driver/driverprofile.dart';
import 'package:flutter_application_4/login.dart';
import 'package:flutter_application_4/loginadmin.dart';
import 'package:flutter_application_4/logindriver.dart';
import 'package:flutter_application_4/loginrecycle.dart';
import 'package:flutter_application_4/HomeNavigationBar.dart';
import 'package:flutter_application_4/Public/publichome.dart';
import 'package:flutter_application_4/RecycleTeam/recycleaddproducts.dart';
import 'package:flutter_application_4/RecycleTeam/recyclehome.dart';
import 'package:flutter_application_4/Driver/recycleteamindriver.dart';
import 'package:flutter_application_4/registration.dart';
import 'package:flutter_application_4/registrationdriver.dart';
import 'package:flutter_application_4/registrationrecycle.dart';
import 'package:flutter_application_4/sample.dart';
import 'package:flutter_application_4/Driver/userindriver.dart';
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
      home:PublicEdit(),
    );
  }
}

