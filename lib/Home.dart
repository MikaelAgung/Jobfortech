import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // FOR SWITCH
  bool isSwitched = false;

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

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                  color: Color(0xff197DDC),
                  padding: EdgeInsets.symmetric(horizontal: 28),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 24, bottom: 16),
                    child: Container(
                      child: Column(
                        children: [
                          //USER
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // HELO USER
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hello,",
                                    style: TextStyle(color: Color(0xffDCEEFF)),
                                  ),
                                  Row(
                                    children: [
                                      Text("USER NAME",
                                          style: TextStyle(
                                              color: Color(0xffffffff),
                                              fontSize: 20)),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Image.asset(
                                        "images/VerifiedCheck.png",
                                        width: 16,
                                      )
                                    ],
                                  )
                                ],
                              ),

                              // STATUS USER
                              Column(
                                children: [
                                  Text("Available",
                                      style:
                                          TextStyle(color: Color(0xffffffff))),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  SizedBox(
                                    height: 20,
                                    child: Switch.adaptive(
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        value: isSwitched,
                                        inactiveThumbColor: Color(0xffD9D9D9),
                                        inactiveTrackColor: Colors.white,
                                        activeColor: Colors.white,
                                        activeTrackColor: Color(0xff8CCC9D),
                                        onChanged: (value) {
                                          setState(() {
                                            isSwitched = value;
                                          });
                                        }),
                                  )
                                ],
                              ),
                            ],
                          ),
                          // USER END
                          //
                          SizedBox(
                            height: 24,
                          ),

                          // USER ROLE
                          Row(
                            children: [
                              Image.asset("images/Roleicon.png"),
                              SizedBox(
                                width: 16,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Your Role Name",
                                      style:
                                          TextStyle(color: Color(0xffffffff))),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 8),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white),
                                        child: Text(
                                          "Newbie",
                                          style: TextStyle(
                                              color: Color(0xff0371D8)),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8, right: 5),
                                        child: Container(
                                            width: 16,
                                            child: Image.asset(
                                                "images/rating.png")),
                                      ),
                                      Text(
                                        "0.0",
                                        style:
                                            TextStyle(color: Color(0xffFFD233)),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          // USER ROLE END
                        ],
                      ),
                    ),
                  )),

              // TOP INDUSTRIES SECTION
              Container(
                padding: EdgeInsets.symmetric(horizontal: 28, vertical: 24),
                // color: Colors.red,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Top Industries",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 20),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 3),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffEFF7FF)),
                            child: Text(
                              "Fintech",
                              style: TextStyle(color: Color(0xff0371D8)),
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 3),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffEFF7FF)),
                            child: Text(
                              "Ecommerce",
                              style: TextStyle(color: Color(0xff0371D8)),
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 3),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffEFF7FF)),
                            child: Text(
                              "Website",
                              style: TextStyle(color: Color(0xff0371D8)),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // PROJECT OUTSOURCE SKILLS
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Project",
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xff858585)),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              "0",
                              style: TextStyle(
                                  fontSize: 30, color: Color(0xff197DDC)),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 56),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Outsource",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff858585)),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Text(
                                "0",
                                style: TextStyle(
                                    fontSize: 30, color: Color(0xff197DDC)),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Skills",
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xff858585)),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            SizedBox(
                              height: 35,
                              child: TextButton(
                                  style: TextButton.styleFrom(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 16),
                                      backgroundColor: Color(0xff197DDC),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25))),
                                  onPressed: () {},
                                  child: Text(
                                    "Add Skill",
                                    style: TextStyle(color: Colors.white),
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),

                    // RECOMMENDED WORK

                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 16),
                      child: Text(
                        "Recommended Work",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),

                    // LISTVIEW BULDER HORIZONTAL VIEW
                    SizedBox(
                      height: 130,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 15,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffE7E6E6)),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.all(10),
                              width: 160,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: 35,
                                        child: ClipRRect(
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(40.0),
                                            ),
                                            child: img()),
                                      ),
                                      IconButton(
                                        padding: EdgeInsets.zero,
                                        constraints:
                                            BoxConstraints(maxWidth: 20),
                                        icon: Icon(
                                          Icons.arrow_circle_right_outlined,
                                          color: Color(0xff197DDC),
                                        ),
                                        splashRadius: 60,
                                        splashColor: Colors.red,
                                        color: Colors.green,
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text(
                                      "Project Name",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 5, bottom: 10),
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
                                                fontSize: 12,
                                                color: Color(0xff197DDC)),
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
                                                fontSize: 12,
                                                color: Color(0xff197DDC)),
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
                                                fontSize: 12,
                                                color: Color(0xff197DDC)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    // AVAILABLE WORK
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Available Work",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Row(
                            children: [
                              TextButton(
                                style: ButtonStyle(
                                  overlayColor: MaterialStateProperty.all(
                                      Colors.transparent),
                                ),
                                onPressed: () => {},
                                child: Row(
                                  // Replace with a Row for horizontal icon + text
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: Text(
                                        "Find Work",
                                        style:
                                            TextStyle(color: Color(0xff1DB5E5)),
                                      ),
                                    ),
                                    Icon(
                                      Icons.search,
                                      color: Color(0xff1DB5E5),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // PROJECT AVAILABLE
                        Container(
                          width: 110,
                          padding: EdgeInsets.symmetric(
                              horizontal: 12, vertical: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 5,
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Text(
                                  "Project \nAvailable",
                                  style: TextStyle(color: Color(0xff858585)),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "10",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Icon(
                                    Icons.computer,
                                    size: 16,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),

                        // OUTSOURCE AVAILABLE
                        Container(
                          width: 110,
                          padding: EdgeInsets.symmetric(
                              horizontal: 12, vertical: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 5,
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Text(
                                  "Outsource \nAvailable",
                                  style: TextStyle(color: Color(0xff858585)),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "15",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Icon(
                                    Icons.computer,
                                    size: 16,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),

                        // JOB POSTING
                        Container(
                          width: 110,
                          padding: EdgeInsets.symmetric(
                              horizontal: 12, vertical: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 5,
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Text(
                                  "Job \nPosting",
                                  style: TextStyle(color: Color(0xff858585)),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "20",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Icon(
                                    Icons.computer,
                                    size: 16,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
