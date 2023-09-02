import 'package:flutter/material.dart';

class Jobpage extends StatefulWidget {
  const Jobpage({super.key});
  static const nameRoute = 'jobpage';

  @override
  State<Jobpage> createState() => _JobpageState();
}

class _JobpageState extends State<Jobpage> {
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
          title: Text("Job Detail")),
    );
  }
}
