import 'dart:math';

import 'package:flutter/material.dart';

class Worklist extends StatelessWidget {
  const Worklist({super.key});

  @override
  Widget build(BuildContext context) {
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

    return Container(
      child: Row(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffE7E6E6)),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(10),
                  width: 170,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 45,
                            child: ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(40.0),
                                ),
                                child: img()),
                          ),
                          Icon(
                            Icons.arrow_circle_right_outlined,
                            color: Color(0xff197DDC),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "Project Name",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8, bottom: 24),
                        child: Text(
                          "Company Name",
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Text(
                                "BE: ",
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                "2/3 ",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xff197DDC)),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "FE: ",
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                "2/3 ",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xff197DDC)),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "MF: ",
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                "2/3",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xff197DDC)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
