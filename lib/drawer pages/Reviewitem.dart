import 'dart:math';

import 'package:flutter/material.dart';

class Reviewitem extends StatefulWidget {
  const Reviewitem({super.key});

  @override
  State<Reviewitem> createState() => _ReviewitemState();
}

class _ReviewitemState extends State<Reviewitem> {
  @override
  Widget build(BuildContext context) {
    // random company image func
    dynamic gambaracak = [
      "images/Company1.png",
      "images/Company2.png",
      "images/Company17.png",
    ];
    Random rnd;

    Image img() {
      int min = 0;
      int max = gambaracak.length;
      rnd = Random();
      int r = min + rnd.nextInt(max - min);
      String image_name = gambaracak[r].toString();
      return Image.asset(image_name);
    }

    // random person image func
    dynamic gambaracakorang = [
      "images/Orang1.png",
      "images/Orang2.png",
      "images/Orang3.png",
    ];
    Random rand;

    Image imgorang() {
      int min = 0;
      int max = gambaracakorang.length;
      rand = Random();
      int r = min + rand.nextInt(max - min);
      String image_name = gambaracakorang[r].toString();
      return Image.asset(image_name);
    }

    return Column(
      children: <Widget>[
        ExpansionTile(
          tilePadding: EdgeInsets.symmetric(vertical: 10, horizontal: 28),
          leading: Container(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 40,
                maxHeight: 40,
              ),
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  child: img()),
            ),
          ),
          title: Text(
            "Project Name",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Company Name"),
              SizedBox(
                height: 7,
              ),
              Container(
                height: 15,
                child: Row(
                  children: [
                    Image.asset("images/rating.png"),
                    Image.asset("images/rating.png"),
                    Image.asset("images/rating.png"),
                    Image.asset("images/rating.png"),
                    Image.asset("images/ratinghalf.png"),
                    SizedBox(
                      width: 5,
                    ),
                    Text("8,4")
                  ],
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                "15th Dec 21 - 21st March 23",
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: 7,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                decoration: BoxDecoration(
                    color: Color(0xffDCEEFF),
                    borderRadius: BorderRadius.circular(10)),
                child: Text("Completed"),
              )
            ],
          ),
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 30, top: 10, right: 20, bottom: 10),
              child: Column(
                children: [
                  ListTile(
                    horizontalTitleGap: 10.0,
                    leading: ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxWidth: 30,
                        maxHeight: 30,
                      ),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        child: imgorang(),
                      ),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Text("HR"),
                    ),
                    subtitle: Text(
                        "Lorem ipsum dolor sit amet consectetur. Fringilla molestie amet vulputate sit molestie varius."),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  ListTile(
                    horizontalTitleGap: 10.0,
                    leading: ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxWidth: 30,
                        maxHeight: 30,
                      ),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30.0),
                        ),
                        child: imgorang(),
                      ),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Text("Consultant Name"),
                    ),
                    subtitle: Text(
                        "Lorem ipsum dolor sit amet consectetur. Fringilla molestie amet vulputate sit molestie varius."),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
