import 'package:JobforTech/Chatitem.dart';
import 'package:flutter/material.dart';

class Messagepage extends StatefulWidget {
  const Messagepage({super.key});

  @override
  State<Messagepage> createState() => _MessagepageState();
}

class _MessagepageState extends State<Messagepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        // CHAT
        Chatitem(),
        // Chatitem(),

        // EMPTY CHAT
        // EmptyChat()
      ],
    ));
  }
}
