import 'package:flutter/material.dart';

class WorksJobs extends StatefulWidget {
  const WorksJobs({super.key});
  static const nameRoute = 'worksjobs';

  @override
  State<WorksJobs> createState() => _WorksJobsState();
}

class _WorksJobsState extends State<WorksJobs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xfff197DDC),
          leading: IconButton(
              // when pressed = no effect
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back)),
          title: Text("Notification")),
    );
  }
}
