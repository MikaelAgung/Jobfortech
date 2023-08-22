import 'package:JobforTech/Mainpage.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});
  // static const nameRoute = "login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // pake resize buat keyboard nggak nabrak input
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(48.0),
            child: Container(
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Image.asset("images/Logoasli.png"),
                  const SizedBox(
                    height: 48,
                  ),
                  const Text(
                    "Tellus mauris cursus at condimentum mauris purus nulla. Donec eget quis euismod sapien eu.",
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          'Email',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ]),
                  const TextField(
                    autofocus: true,
                    decoration:
                        InputDecoration(hintText: "Enter email address"),
                  ),
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          'Password',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ]),
                  const TextField(
                    enableInteractiveSelection: false,
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  // BUTTON LOGIN
                  TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color(0xfff197DDC),
                        // minimum sizeheight for button stretch wide
                        minimumSize: const Size.fromHeight(50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                    onPressed: () {
                      // push replacement so we cant go back to login page, if just push we can back to login
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) {
                          return const Homepage();
                        },
                      ));
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(color: Color(0xffffffff)),
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  // BUTTON GOOGLE
                  ElevatedButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color(0xffffffff),
                        // minimum sizeheight for stretch
                        minimumSize: const Size.fromHeight(50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                    onPressed: () {},
                    child: const Text(
                      "Google",
                      style: TextStyle(color: Color(0xfff197DDC)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
