import 'dart:math';

import 'package:flutter/material.dart';

class Notifitem extends StatelessWidget {
  const Notifitem({super.key});

  @override
  Widget build(BuildContext context) {
    // function to random pick image from aset
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
    // end of function to random pick image from aset
    // then call it with img()

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Container(
        padding: EdgeInsets.all(20),
        width: 370,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xffDCEEFF),
        ),
        child: Row(
          children: [
            Row(
              children: [
                Image.asset(
                  "images/titik.png",
                  width: 12,
                ),
                SizedBox(
                  width: 10,
                ),
                ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(21.0),
                    ),
                    // call the random img funct
                    child: Container(
                      width: 42,
                      child: img(),
                    )),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              // color: Colors.amber,
              width: 240,
              child: const Column(
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          "A company post a new job. Let's check this out.",
                          maxLines: 2,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        "2 minutes ago",
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Readnotif extends StatelessWidget {
  const Readnotif({super.key});

  @override
  Widget build(BuildContext context) {
    // function to random pick image from asset
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
    // end of function to random pick image from aset
    // call it with img()

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Container(
        padding: EdgeInsets.all(20),
        width: 370,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Row(
          children: [
            Row(
              // Hide blue dot notif when it has been read
              children: [
                Opacity(
                  opacity: 0.0,
                  child: Image.asset(
                    "images/titik.png",
                    width: 12,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(21.0),
                    ),
                    // call the random img funct
                    child: Container(
                      width: 42,
                      child: img(),
                    )),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              // color: Colors.amber,
              width: 240,
              child: const Column(
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          "A company post a new project. Let's check this out.",
                          maxLines: 2,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        "6 days ago",
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Adminnotif extends StatelessWidget {
  const Adminnotif({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.all(20),
          width: 370,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xffDCEEFF),
          ),
          child: Row(
            children: [
              Row(
                children: [
                  Image.asset(
                    "images/titik.png",
                    width: 12,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(21.0),
                      ),
                      // call the random img funct
                      child: Container(
                        width: 42,
                        child: Image.asset("images/AdminJFT.png"),
                      )),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                // color: Colors.amber,
                width: 240,
                child: const Column(
                  children: [
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            "You have new message from Admin. Let's check the message.",
                            maxLines: 2,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "2 minutes ago",
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
