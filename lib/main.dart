import 'package:JobforTech/Findworks&jobs.dart';
import 'package:JobforTech/Loginpage.dart';

import 'package:JobforTech/Notification.dart';
import 'package:JobforTech/drawer%20pages/Edit%20Profile.dart';

import 'package:JobforTech/drawer%20pages/Payroll.dart';
import 'package:JobforTech/drawer%20pages/Referral.dart';
import 'package:JobforTech/drawer%20pages/Reviews.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loginpage(),
      routes: {
        EditProfile.nameRoute: (ctx) => EditProfile(),
        Payroll.nameRoute: (ctx) => Payroll(),
        Reviews.nameRoute: (ctx) => Reviews(),
        Referral.nameRoute: (ctx) => Referral(),
        Notifpage.nameRoute: (ctx) => Notifpage(),
        WorksJobs.nameRoute: (ctx) => WorksJobs(),
      },
    );
  }
}
