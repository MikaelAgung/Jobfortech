import 'package:flutter/material.dart';

class Chatitem extends StatelessWidget {
  const Chatitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border(bottom: BorderSide())),
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
        title: Text("1"),
        subtitle: Text("22"),
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
