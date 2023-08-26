import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Referral extends StatefulWidget {
  const Referral({super.key});
  static const nameRoute = 'referalku';

  @override
  State<Referral> createState() => _ReferralState();
}

class _ReferralState extends State<Referral> {
  @override
  Widget build(BuildContext context) {
    String refcode = "INI-KODE-KAMU";
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
          title: Text("Referral Program")),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 40),
              width: 304,
              // alignment: Alignment(0, 0),
              child: Image.asset(
                "images/referralimg.png",
                height: 256,
                width: 304,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    "Adipiscing, mauris elementum.",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Mattis odio aliquet dolor tristique volutpat \nphasellus consequat. Vel viverra.",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "INI-KODE-KAMU",
                        style: TextStyle(color: Color(0xfff197DDC)),
                      ),
                      SizedBox(width: 16),
                      // copy button + copied notif with snackBar
                      TextButton.icon(
                          onPressed: () {
                            Clipboard.setData(ClipboardData(text: refcode))
                                .then((value) {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text("Copied to clipboard"),
                                behavior: SnackBarBehavior.floating,
                              ));
                            });
                          },
                          icon: Icon(
                            Icons.copy,
                            color: Color(0xff858585),
                          ),
                          label: Text(
                            "Copy",
                            style: TextStyle(color: Color(0xff858585)),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 170,
                        child: OutlinedButton.icon(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Color(0xff197DDC)),
                            shape: StadiumBorder(),
                          ),
                          onPressed: () {},
                          icon: Image.asset(
                            "images/LinkedIn.png",
                            height: 20,
                          ),
                          label: Text("LinkedIn"),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      SizedBox(
                        height: 50,
                        width: 170,
                        child: OutlinedButton.icon(
                          style: OutlinedButton.styleFrom(
                            // side: BorderSide(color: Color(0xff197DDC)),
                            backgroundColor: Color(0xff197DDC),
                            foregroundColor: Color(0xffFFFFFF),
                            shape: StadiumBorder(),
                          ),
                          onPressed: () {},
                          icon: Image.asset(
                            "images/Wa.png",
                            height: 20,
                          ),
                          label: Text(
                            "WhatsApp",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
