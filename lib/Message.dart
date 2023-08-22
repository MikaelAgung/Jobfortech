import 'package:JobforTech/Chatitem.dart';
import 'package:flutter/material.dart';

class Messagepage extends StatefulWidget {
  const Messagepage({super.key});

  @override
  State<Messagepage> createState() => _MessagepageState();
}

class _MessagepageState extends State<Messagepage> {
  // Make template then pass to body
  // List<ListTile> listChat = [
  //   ListTile(
  //       contentPadding: EdgeInsets.symmetric(horizontal: 0),
  //       title: Text(""),
  //       subtitle: Text(""),
  //       trailing: Text(""),
  //       leading: CircleAvatar()),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // listview separated for separate every item
        body: ListView(
      children: [
        Chatitem(),
        Chatitem(),
        Chatitem(),
        Chatitem(),
      ],
    )
        // ListView.separated(
        //   separatorBuilder: (context, index) {
        //     return Container(
        //       height: 2,
        //       color: Color.fromARGB(255, 238, 238, 238),
        //     );
        //   },
        //   itemCount: 2,
        //   itemBuilder: (context, index) {
        //     return ListTile(
        //       contentPadding: EdgeInsets.symmetric(horizontal: 20),
        //       title: Text("aku"),
        //       subtitle: Text("1"),
        //       leading: CircleAvatar(),
        //       trailing: Text("10 pm"),
        //     );
        //   },
        // ),

        );
  }
}
