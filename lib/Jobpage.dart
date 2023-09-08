import 'dart:math';

import 'package:JobforTech/Companyprofile.dart';
import 'package:flutter/material.dart';

class Jobpage extends StatefulWidget {
  const Jobpage({super.key});
  static const nameRoute = 'jobpage';

  @override
  State<Jobpage> createState() => _JobpageState();
}

class _JobpageState extends State<Jobpage> {
  //FOR CHECK BOX
  bool value = false;
  bool value2 = false;

  @override
  Widget build(BuildContext context) {
    dynamic tag = [
      "Front End",
      "Back End",
      "Mobile",
      "E-Commerce",
    ];
    Random rnd;

    Text tagjob() {
      int min = 0;
      int max = tag.length;
      rnd = Random();
      int r = min + rnd.nextInt(max - min);
      String tag_name = tag[r].toString();

      return Text(
        tag_name,
        style: TextStyle(color: Color(0xff197DDC)),
      );
    }

    // FOR WIDTH MATCH SCREEN
    double screenWidth = MediaQuery.of(context).size.width;

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
          title: Text("Job Detail")),
      body: SingleChildScrollView(
        child: Container(
          // WIDTH MATCH SCREEN
          width: screenWidth,
          padding: EdgeInsets.symmetric(vertical: 24, horizontal: 28),
          // color: Colors.amber,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "E-Commerce Job",
                style: TextStyle(color: Color(0xff197DDC), fontSize: 30),
              ),
              // EXPANSION JOB DESC
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 12),
                child: ExpansionTile(
                  // REMOVE EXPANS TILE HEADER PADDING
                  tilePadding: EdgeInsets.only(left: 0),
                  // REMOVE DIVIDER LINE
                  shape: Border(),
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
                          child: Image.asset("images/Company1.png")),
                    ),
                  ),
                  title: Text(
                    "Company Name",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      width: screenWidth,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Lorem ipsum dolor sit amet consectetur. Fringilla n\molestie amet vulputate sit molestie varius. Fringilla n\molestie amet vulputate sit molestie varius.  Lorem n\ipsum dolor sit amet consectetur. Fringilla molestie n\amet vulputate sit molestie varius.  Fringilla molestie n\amet vulputate sit molestie varius.",
                            style: TextStyle(
                              color: Color(0xff858585),
                              height: 1.5,
                            ),
                            textAlign: TextAlign.justify,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

              // COMPANY PROFILE LINK
              GestureDetector(
                child: Text("> See More Company Profile",
                    style: TextStyle(color: Color(0xff197DDC))),
                onTap: () {
                  Navigator.of(context).pushNamed(Companyprofile.nameRoute);
                },
              ),

              // TAG
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: SizedBox(
                  height: 50,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              top: 14, bottom: 14, right: 3),
                          child: Row(
                            children: [
                              Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 2),
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0xff0371D8)),
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: tagjob()),
                            ],
                          ),
                        );
                      }),
                ),
              ),

              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 3),
                    child: Row(
                      children: [
                        Icon(
                          Icons.calendar_month,
                          color: Color(0xff197DDC),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text(
                            "Posted on 15th dec 22",
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 3),
                    child: Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          color: Color(0xff197DDC),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text("3 Months Development"),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 3),
                    child: Row(
                      children: [
                        Icon(
                          Icons.monetization_on_outlined,
                          color: Color(0xff197DDC),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text("IDR 6,5 - 8 JT"),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Color(0xff197DDC),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text("Indonesia"),
                      ),
                    ],
                  ),
                ],
              ),

              // JOB OVERVIEW
              Container(
                padding: EdgeInsets.symmetric(vertical: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Text(
                        "Job Overview",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet consectetur. Fringilla molestie amet vulputate sit molestie varius. Fringilla molestie amet vulputate sit molestie varius. Fringilla molestie amet vulputate sit molestie varius. Lorem ipsum dolor sit amet consectetur.",
                      style: TextStyle(
                        color: Color(0xff858585),
                        height: 1.5,
                      ),
                      textAlign: TextAlign.justify,
                    )
                  ],
                ),
              ),

              // JOB GALERY
              SizedBox(
                width: 150,
                child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8),
                    ),
                    child: Image.asset("images/Office.png")),
              ),

              // REQUIREMENT
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          // CHECK BOX FUNC
                          Checkbox(
                            value: this.value,
                            onChanged: (value) {
                              setState(() {
                                this.value = true;
                              });
                            },
                          ),
                          Row(
                            children: [
                              Text("I agree with the "),
                              Text(
                                "Terms and Conditions",
                                style: TextStyle(color: Color(0xff197DDC)),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          // CHECK BOX FUNC
                          Checkbox(
                            value: value2,
                            onChanged: (value) {
                              setState(() {
                                value2 = true;
                              });
                            },
                          ),
                          Row(
                            children: [
                              Text("I agree with the "),
                              Text("Privacy Policy",
                                  style: TextStyle(color: Color(0xff197DDC))),
                            ],
                          )
                        ],
                      ),

                      // APPLY BUTTON
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: Color(0xff0371D8),
                            ),
                            width: screenWidth,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: Text(
                                "Apply",
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          onTap: () {
                            showDialog(
                                context: context,
                                //USER MUST TAP BUTTON TO CLOSE POPUP
                                barrierDismissible: false,
                                builder: (context) {
                                  return Dialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    elevation: 16,
                                    child: Container(
                                        padding: EdgeInsets.all(20),
                                        height: 210,
                                        child: Column(
                                          children: [
                                            Icon(
                                              Icons.warning,
                                              size: 60,
                                              color: Colors.red,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "Oops, Sorry",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    "Your account must be verified to apply this vacancy.",
                                                    style:
                                                        TextStyle(fontSize: 12),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            // CLOSE POPUP BUTTON
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 10,
                                                            horizontal: 20),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color: Color(0xff197DDC),
                                                    ),
                                                    child: Text(
                                                      "Got it",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    )))
                                          ],
                                        )),
                                  );
                                });
                          },
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
