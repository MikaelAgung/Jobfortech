import 'package:JobforTech/notifitem.dart';
import 'package:flutter/material.dart';

class Notifpage extends StatelessWidget {
  const Notifpage({super.key});
  static const nameRoute = 'notif';

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
      body: ListView(
        padding: EdgeInsets.all(20),
        children: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "You have 3 Unread Notifications today",
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 15),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 24, bottom: 16),
            child: Text("Today",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          ),
          Notifitem(),
          Adminnotif(),
          Padding(
            padding: EdgeInsets.only(top: 24, bottom: 16),
            child: Text("This Week",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          ),
          Readnotif(),
        ],
      ),
    );
  }
}
