import 'package:flutter/material.dart';

class Payroll extends StatefulWidget {
  const Payroll({super.key});
  static const nameRoute = 'bayaran';

  @override
  State<Payroll> createState() => _PayrollState();
}

class _PayrollState extends State<Payroll> {
  // allow to change button icon on press
  bool click = true;

  @override
  Widget build(BuildContext context) {
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
          title: Text("Payroll")),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 28, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Payroll",
                    style: TextStyle(fontSize: 30, color: Color(0xff197DDC)),
                  ),
                  SizedBox(
                    height: 40,
                    width: 130,
                    child: TextButton.icon(
                      style: TextButton.styleFrom(
                        // side: BorderSide(color: Color(0xff197DDC)),
                        backgroundColor: Color(0xff197DDC),
                        foregroundColor: Color(0xffFFFFFF),
                        shape: StadiumBorder(),
                      ),
                      onPressed: () {},
                      icon: Image.asset(
                        "images/Withdraw.png",
                        height: 20,
                      ),
                      label: Text(
                        "Withdraw",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "Your Balance",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "IDR",
                      style: TextStyle(fontSize: 20),
                    ),
                    // Change text on pressed
                    Row(
                      children: [
                        Text(
                          (click == false) ? "12.345.678" : "",
                          style: TextStyle(fontSize: 30),
                        ),
                        IconButton(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          color: Color(0xff197DDC),
                          //
                          //
                          // change icon on pressed
                          icon: Icon((click == false)
                              ? Icons.remove_red_eye
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              click = !click;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 65,
                    width: 350,
                    child: OutlinedButton.icon(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                      ),
                      onPressed: () {},
                      icon: Image.asset(
                        "images/LinkedIn.png",
                        height: 30,
                        width: 40,
                        color: Colors.grey,
                      ),
                      label: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Bank Account Name",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "No. Rekening",
                                style: TextStyle(color: Color(0xff858585)),
                              ),
                            ],
                          ),
                          Image.asset(
                            "images/Setting.png",
                            height: 25,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              //

              //INVOICE
              Padding(
                padding: const EdgeInsets.only(top: 24, bottom: 16),
                child: Text(
                  "Incoming Invoice",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              //

              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xff92CAFF)),
                  color: Color(0xffEFF7FF),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("INV/1235-ABC",
                            style: TextStyle(color: Color(0xff197DDC))),
                        Text("12 Dec 2022")
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        "You receive a new payment from Project name/Company name.",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total Payment"),
                        Row(
                          children: [
                            Text(
                              "Rp. 7.200.000",
                              style: TextStyle(color: Color(0xff197DDC)),
                            ),
                            IconButton(
                              padding: EdgeInsets.zero,
                              constraints: BoxConstraints(maxWidth: 20),
                              icon: Icon(
                                Icons.download,
                              ),
                              splashRadius: 60,
                              splashColor: Colors.red,
                              color: Colors.green,
                              onPressed: () {},
                            ),
                          ],
                        )
                      ],
                    )
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
