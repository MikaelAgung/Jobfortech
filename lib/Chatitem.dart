import 'package:flutter/material.dart';

class Chatitem extends StatelessWidget {
  const Chatitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Color.fromARGB(255, 223, 223, 223)))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListTile(
          leading: ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: 42,
              minHeight: 42,
              maxWidth: 60,
              maxHeight: 60,
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(10.0),
              ),
              child: Image.asset(
                "images/Company15.png",
              ),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(bottom: 3),
            child: Text("Project Group Chat"),
          ),
          subtitle: Text(
            "~ Andre Ezy: Lorem ipsum dolor sit amet consectetur. Fringilla molestie Fringilla molestie Fringilla",
            style: TextStyle(fontSize: 13),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          trailing: Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: Column(
              children: [
                Text("19.01"),
                SizedBox(height: 5),
                Container(
                  alignment: Alignment.center,
                  width: 20,
                  height: 20,
                  decoration: const BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: const Text(
                    "2",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class EmptyChat extends StatelessWidget {
  const EmptyChat({super.key});

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 240, bottom: 16),
            child: Image.asset(
              "images/Chat.png",
              width: 80,
            ),
          ),
          Text(
            "You don't have any message",
            style: TextStyle(
                color: Color(0xff858585),
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
