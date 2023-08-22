import 'package:JobforTech/drawer%20pages/Reviewitem.dart';
import 'package:flutter/material.dart';

class Reviews extends StatelessWidget {
  const Reviews({super.key});
  static const nameRoute = 'reviewku';

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
          title: Text("Work & Reviews")),
      body: ListView(
        children: [
          Reviewitem(),
          Reviewitem(),
          Reviewitem(),
          Reviewitem(),
          Reviewitem(),
          Reviewitem(),
          Reviewitem(),
        ],
      ),
    );
  }
}
