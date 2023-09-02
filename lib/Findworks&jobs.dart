import 'dart:math';

import 'package:JobforTech/Jobpage.dart';
import 'package:JobforTech/Worksandjobscard.dart';
import 'package:flutter/material.dart';

class WorksJobs extends StatefulWidget {
  const WorksJobs({super.key});
  static const nameRoute = 'worksjobs';

  @override
  State<WorksJobs> createState() => _WorksJobsState();
}

class _WorksJobsState extends State<WorksJobs> {
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
          title: Text("Find Works & Jobs")),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 10, top: 24),
          // color: Colors.amber,
          child: Column(
            children: [
              Row(
                children: [
                  TextButton(
                    style: ButtonStyle(
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                    ),
                    onPressed: () => {},
                    child: Container(
                      // color: Colors.amber,
                      width: 340,
                      // color: Colors.black,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Available Works",
                            style: TextStyle(
                                color: Color(0xff197DDC),
                                fontSize: 30,
                                fontWeight: FontWeight.normal),
                          ),
                          IconButton(
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(maxWidth: 0),
                            icon: Icon(
                              Icons.refresh,
                            ),
                            color: Color(0xff1DB5E5),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              // PROJECT CARD
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Worklist(),
                      Worklist(),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Worklist(),
                      Worklist(),
                    ],
                  ),
                ],
              ),

              // FIND JOB
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    TextButton(
                      style: ButtonStyle(
                        overlayColor:
                            MaterialStateProperty.all(Colors.transparent),
                      ),
                      onPressed: () => {},
                      child: Container(
                        width: 340,
                        // color: Colors.black,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Find Jobs",
                              style: TextStyle(
                                  color: Color(0xff197DDC),
                                  fontSize: 30,
                                  fontWeight: FontWeight.normal),
                            ),
                            IconButton(
                              padding: EdgeInsets.zero,
                              constraints: BoxConstraints(maxWidth: 00),
                              icon: Icon(Icons.manage_search_outlined),
                              color: Color(0xff1DB5E5),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // HORIZONTAL SCROLL
              SizedBox(
                height: 125,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed(Jobpage.nameRoute);
                        },
                        child: Container(
                          padding: EdgeInsets.all(15),
                          width: 240,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0xffE7E6E6)),
                          ),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(21.0),
                                      ),
                                      // call the random img funct
                                      child: Container(
                                        width: 42,
                                        child:
                                            Image.asset("images/Company1.png"),
                                      )),
                                ],
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                // color: Colors.amber,
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Mobile Dev",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff0371D8)),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 3, bottom: 5),
                                      child: Text(
                                        "Company Name",
                                        style:
                                            TextStyle(color: Color(0xff858585)),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 5),
                                      child: Text(
                                        "Flutter, Experience",
                                        style:
                                            TextStyle(color: Color(0xff197DDC)),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.monetization_on_outlined,
                                          color: Color(0xff197DDC),
                                        ),
                                        Text(
                                          "IDR 6.5 - 8 jt",
                                        ),
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
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
