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
          Text(
            "You have 3 Unread Notifications today",
            style: TextStyle(fontStyle: FontStyle.italic, fontSize: 15),
          ),
          SizedBox(height: 24),
          Text("Today",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          SizedBox(height: 16),
          Notifitem(),
          SizedBox(
            height: 10,
          ),
          Notifitem(),
          SizedBox(
            height: 10,
          ),
          Notifitem(),
          SizedBox(
            height: 10,
          ),
          SizedBox(height: 24),
          Text("This Week",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          SizedBox(height: 16),
          Readnotif(),
          SizedBox(
            height: 10,
          ),
          Readnotif(),
          SizedBox(
            height: 10,
          ),
          Readnotif(),
          SizedBox(
            height: 10,
          ),
          Readnotif(),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
