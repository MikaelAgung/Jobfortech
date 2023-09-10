import 'package:JobforTech/Chatitem.dart';
import 'package:JobforTech/Companyprofile.dart';
import 'package:JobforTech/Findworks&jobs.dart';
import 'package:JobforTech/Jobpage.dart';
import 'package:JobforTech/Jobslistpage.dart';
import 'package:JobforTech/Loginpage.dart';

import 'package:JobforTech/Notification.dart';
import 'package:JobforTech/Projectpage.dart';
import 'package:JobforTech/drawer%20pages/Edit%20Profile.dart';

import 'package:JobforTech/drawer%20pages/Payroll.dart';
import 'package:JobforTech/drawer%20pages/Referral.dart';
import 'package:JobforTech/drawer%20pages/Reviews.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // DEVICE ONLY SHOW POTRAIT UI, CAN"T LANDSCAPE
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
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
        Jobpage.nameRoute: (ctx) => Jobpage(),
        Projectpage.nameRoute: (ctx) => Projectpage(),
        Jobslistpage.nameRoute: (ctx) => Jobslistpage(),
        Companyprofile.nameRoute: (ctx) => Companyprofile(),
        isiChat.nameRoute: (ctx) => isiChat(),
      },
    );
  }
}
