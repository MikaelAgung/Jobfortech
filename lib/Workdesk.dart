import 'package:flutter/material.dart';

class Workdeskpage extends StatelessWidget {
  const Workdeskpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 28),
              height: 180,
              color: Color(0xff197DDC),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 24, bottom: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "New assignment",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Row(
                          children: [
                            Text("Confirm in",
                                style: TextStyle(color: Colors.white)),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "0:00:00",
                              style: TextStyle(color: Color(0xffFFC645)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    width: 370,
                    height: 103,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffDCEEFF),
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
                                  child: Image.asset("images/Company1.png"),
                                )),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          // color: Colors.amber,
                          width: 220,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "E-Commerce Project",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff0371D8)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 4, bottom: 5),
                                child: Text(
                                  "Company Name",
                                  style: TextStyle(color: Color(0xff858585)),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Back End • 3 Months",
                                style: TextStyle(
                                    color: Color(0xff0371D8), fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.arrow_circle_right_outlined,
                          color: Color(0xff0371D8),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // color: Colors.amber,
              width: 340,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Work Desk",
                            style: TextStyle(
                                fontSize: 30, color: Color(0xff197DDC))),
                        TextButton(
                          style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.all(Colors.transparent),
                          ),
                          onPressed: () => {},
                          child: Row(
                            // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: Text(
                                  "Find Work",
                                  style: TextStyle(color: Color(0xff1DB5E5)),
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50, bottom: 16),
                    child: Image.asset("images/Folder.png"),
                  ),
                  Text(
                    "You don’t have any work",
                    style: TextStyle(
                        color: Color(0xff858585),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Click ‘Explore Work’  to find available works and jobs",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff858585),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24),
                    child: SizedBox(
                      height: 35,
                      child: TextButton(
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              backgroundColor: Color(0xff197DDC),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25))),
                          onPressed: () {},
                          child: Text(
                            "Explore Work",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
