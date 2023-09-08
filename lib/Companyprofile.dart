import 'dart:math';

import 'package:JobforTech/Jobpage.dart';
import 'package:JobforTech/Projectpage.dart';
import 'package:flutter/material.dart';

class Companyprofile extends StatefulWidget {
  const Companyprofile({super.key});
  static const nameRoute = 'Companyprofile';

  @override
  State<Companyprofile> createState() => _CompanyprofileState();
}

class _CompanyprofileState extends State<Companyprofile> {
  @override
  Widget build(BuildContext context) {
    dynamic tag = [
      "Bank",
      "Website",
      "Mobile",
      "Investation",
    ];
    Random rnd;

    Text companytag() {
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
          title: Text("Company Profile")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Container(
                  child: Row(
                    children: [
                      Container(
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
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text("Company Name",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
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
                                  child: companytag()),
                            ],
                          ),
                        );
                      }),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Icon(
                            Icons.account_circle,
                            color: Color(0xff0371D8),
                          ),
                        ),
                        Text(
                          "Founder Name",
                          style: TextStyle(color: Color(0xff0371D8)),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Icon(
                            Icons.business_outlined,
                            color: Color(0xff0371D8),
                          ),
                        ),
                        Text(
                          "Established 2000",
                          style: TextStyle(color: Color(0xff0371D8)),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Icon(
                            Icons.people,
                            color: Color(0xff0371D8),
                          ),
                        ),
                        Text(
                          "200 - 500 Employees ",
                          style: TextStyle(color: Color(0xff0371D8)),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 24),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Icon(
                            Icons.location_pin,
                            color: Color(0xff0371D8),
                          ),
                        ),
                        Text(
                          "Indonesia",
                          style: TextStyle(color: Color(0xff0371D8)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                "Lorem ipsum dolor sit amet consectetur. Fringilla molestie amet vulputate sit molestie varius. Fringilla molestie amet vulputate sit molestie varius.  Lorem ipsum dolor sit amet consectetur. Fringilla molestie amet vulputate sit molestie varius.  Fringilla molestie amet vulputate sit molestie varius",
                style: TextStyle(
                  color: Color(0xff858585),
                  height: 1.5,
                ),
                textAlign: TextAlign.justify,
              ),

              // CONTACT INFO
              Container(
                padding: EdgeInsets.symmetric(vertical: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Text(
                        "Job Overview",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),

                    // LINKEDIN
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: ConstrainedBox(
                                  constraints: const BoxConstraints(
                                    maxWidth: 24,
                                  ),
                                  child: ClipRRect(
                                      child:
                                          Image.asset("images/LinkedIn.png")),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Text("Linked In"),
                              )
                            ],
                          ),
                          Text(
                            "linkedin.com/in/company",
                            style: TextStyle(
                                color: Color(0xff1DB5E5),
                                fontStyle: FontStyle.italic),
                          )
                        ],
                      ),
                    ),

                    // WEBSITE
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: ConstrainedBox(
                                  constraints: const BoxConstraints(
                                    maxWidth: 24,
                                  ),
                                  child: ClipRRect(
                                      child: Image.asset("images/Website.png")),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Text("Website"),
                              )
                            ],
                          ),
                          Text(
                            "www.websitecompany.com",
                            style: TextStyle(
                                color: Color(0xff1DB5E5),
                                fontStyle: FontStyle.italic),
                          )
                        ],
                      ),
                    ),

                    // INSTAGRAM
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: ConstrainedBox(
                                  constraints: const BoxConstraints(
                                    maxWidth: 24,
                                  ),
                                  child: ClipRRect(
                                      child:
                                          Image.asset("images/Instagram.png")),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Text("Instagram"),
                              )
                            ],
                          ),
                          Text(
                            "@Companyname",
                            style: TextStyle(
                                color: Color(0xff1DB5E5),
                                fontStyle: FontStyle.italic),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // AVAILABLE PROJECT
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Text(
                        "Available Project",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 130,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 15,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(Projectpage.nameRoute);
                              },
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
                                              child: Image.asset(
                                                  "images/Company1.png")),
                                        ),
                                        Icon(Icons.arrow_circle_right_outlined,
                                            color: Color(0xff197DDC)),
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
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),

              // AVAILABLE JOB
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: Text(
                          "Available Jobs",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ),
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
                                  Navigator.of(context)
                                      .pushNamed(Jobpage.nameRoute);
                                },
                                child: Container(
                                  padding: EdgeInsets.all(15),
                                  width: 240,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border:
                                        Border.all(color: Color(0xffE7E6E6)),
                                  ),
                                  child: Row(
                                    children: [
                                      Row(
                                        children: [
                                          ClipRRect(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(21.0),
                                              ),
                                              // call the random img funct
                                              child: Container(
                                                width: 42,
                                                child: Image.asset(
                                                    "images/Company1.png"),
                                              )),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        // color: Colors.amber,
                                        child: const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Mobile Dev",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xff0371D8)),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: 3, bottom: 5),
                                              child: Text(
                                                "Company Name",
                                                style: TextStyle(
                                                    color: Color(0xff858585)),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 5),
                                              child: Text(
                                                "Flutter, Experience",
                                                style: TextStyle(
                                                    color: Color(0xff197DDC)),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons
                                                      .monetization_on_outlined,
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
            ],
          ),
        ),
      ),
    );
  }
}
