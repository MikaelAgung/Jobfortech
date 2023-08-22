import 'package:flutter/material.dart';

class Payroll extends StatelessWidget {
  const Payroll({super.key});
  static const nameRoute = 'bayaran';

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
          title: Text("Payroll")),
    );
  }
}
