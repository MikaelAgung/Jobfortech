import 'dart:math';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class Newassign extends StatefulWidget {
  const Newassign({super.key});
  static const nameRoute = "newassign";

  @override
  State<Newassign> createState() => _NewassignState();
}

class _NewassignState extends State<Newassign> {
  //FOR CHECK BOX
  bool value = false;
  bool value2 = false;
  bool click = true;

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
          title: Text("New Assigment")),
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
                "E-Commerce Project",
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
                  // Navigator.of(context).pushNamed();
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

              // TEAM PROFILE
              Container(
                padding: EdgeInsets.symmetric(vertical: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Team Profile",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child:
                          // FRONT END DEV
                          Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Front End Dev",
                            style: TextStyle(color: Color(0xff858585)),
                          ),
                          Row(
                            children: [
                              // 1st SLOT
                              ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(21.0),
                                  ),
                                  child: Container(
                                    width: 30,
                                    child: Image.asset("images/Orang1.png"),
                                  )),

                              // 2nd SLOT
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(21.0),
                                    ),
                                    child: Container(
                                      width: 30,
                                      child: Image.asset("images/Orang2.png"),
                                    )),
                              ),

                              // 3rd SLOT
                              ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(21.0),
                                  ),
                                  child: Container(
                                    width: 30,
                                    child: Image.asset("images/Orang3.png"),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Text(
                                  "3/3",
                                  style: TextStyle(color: Color(0xff197DDC)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // BACK END DEV
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Back End Dev",
                          style: TextStyle(color: Color(0xff858585)),
                        ),
                        Row(
                          children: [
                            // 1st SLOT
                            ClipRRect(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(21.0),
                              ),
                              child: DottedBorder(
                                borderType: BorderType.RRect,
                                radius: Radius.circular(20),
                                child: Container(
                                  width: 25,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            ),

                            // 2nd SLOT
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(21.0),
                                ),
                                child: DottedBorder(
                                  borderType: BorderType.RRect,
                                  radius: Radius.circular(20),
                                  child: Container(
                                    width: 25,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            // 3rd SLOT
                            ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(21.0),
                                ),
                                child: Container(
                                  width: 30,
                                  child: Image.asset("images/Orang4.png"),
                                )),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text(
                                "1/3",
                                style: TextStyle(color: Color(0xff197DDC)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    // MOBILE DEV
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Mobile Dev",
                            style: TextStyle(color: Color(0xff858585)),
                          ),
                          Row(
                            children: [
                              // 1st SLOT
                              ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(21.0),
                                ),
                                child: DottedBorder(
                                  borderType: BorderType.RRect,
                                  radius: Radius.circular(20),
                                  child: Container(
                                    width: 25,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),

                              // 2nd SLOT
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(21.0),
                                    ),
                                    child: Container(
                                      width: 30,
                                      child: Image.asset("images/Orang5.png"),
                                    )),
                              ),

                              // 3rd SLOT
                              ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(21.0),
                                  ),
                                  child: Container(
                                    width: 30,
                                    child: Image.asset("images/Orang6.png"),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Text(
                                  "2/3",
                                  style: TextStyle(color: Color(0xff197DDC)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "One position left as a Mobile Developer!",
                      style: TextStyle(
                          color: Color(0xff197DDC),
                          fontStyle: FontStyle.italic),
                    )
                  ],
                ),
              ),

              // REQUIREMENT
              Container(
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
                  ],
                ),
              ),

              // BUTTON BUTTON BUTTON BUTTON BUTTON BUTTON
              Container(
                  child: (click == false)
                      ? //
                      //  BUTTON STATE WHEN DECLINE PROJECT
                      Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: GestureDetector(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: Color(0xffFF6161),
                              ),
                              width: screenWidth,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15),
                                child: Text(
                                  "Declined",
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            onTap: () {},
                          ),
                        )
                      :

                      // NORMAL STATE
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // DECLINE BUTTON
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: GestureDetector(
                                child: Container(
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xff0371D8)),
                                    borderRadius: BorderRadius.circular(24),
                                    color: Colors.white,
                                  ),
                                  width: screenWidth * 0.42,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15),
                                    child: Text(
                                      "Decline",
                                      style:
                                          TextStyle(color: Color(0xff0371D8)),
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
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        vertical: 10),
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                          "Confirmation",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        SizedBox(
                                                          height: 5,
                                                        ),
                                                        Text(
                                                          "Are you sure want to decline this project?.",
                                                          style: TextStyle(
                                                              fontSize: 12),
                                                        ),
                                                      ],
                                                    ),
                                                  ),

                                                  //POPUP BUTTON
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      // CONFIRM NOOOOOOOOOOOO
                                                      TextButton(
                                                          onPressed: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                          child: Container(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      vertical:
                                                                          10,
                                                                      horizontal:
                                                                          30),
                                                              decoration:
                                                                  BoxDecoration(
                                                                border: Border.all(
                                                                    color: Color(
                                                                        0xff197DDC)),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20),
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              child: Text(
                                                                "No",
                                                                style: TextStyle(
                                                                    color: Color(
                                                                        0xff197DDC)),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                              ))),

                                                      // CONFIRM YESSSSSSSSSSSS
                                                      TextButton(
                                                          onPressed: () {
                                                            setState(() {
                                                              click = !click;
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                            });
                                                          },
                                                          child: Container(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      vertical:
                                                                          10,
                                                                      horizontal:
                                                                          30),
                                                              decoration:
                                                                  BoxDecoration(
                                                                border: Border.all(
                                                                    color: Color(
                                                                        0xff197DDC)),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20),
                                                                color: Color(
                                                                    0xff197DDC),
                                                              ),
                                                              child: Text(
                                                                "Yes",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white),
                                                              ))),
                                                    ],
                                                  ),
                                                ],
                                              )),
                                        );
                                      });
                                },
                              ),
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
                                  width: screenWidth * 0.42,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15),
                                    child: Text(
                                      "Accept",
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
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        vertical: 10),
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                          "Oops, Sorry",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        SizedBox(
                                                          height: 5,
                                                        ),
                                                        Text(
                                                          "Your account must be verified to accept this project.",
                                                          style: TextStyle(
                                                              fontSize: 12),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  // CLOSE POPUP BUTTON
                                                  TextButton(
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      child: Container(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  vertical: 10,
                                                                  horizontal:
                                                                      20),
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20),
                                                            color: Color(
                                                                0xff197DDC),
                                                          ),
                                                          child: Text(
                                                            "Got it",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white),
                                                          )))
                                                ],
                                              )),
                                        );
                                      });
                                },
                              ),
                            ),
                          ],
                        )),
            ],
          ),
        ),
      ),
    );
  }
}
