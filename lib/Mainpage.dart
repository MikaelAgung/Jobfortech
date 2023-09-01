import 'package:JobforTech/Home.dart';
import 'package:JobforTech/Message.dart';
import 'package:JobforTech/Notification.dart';
import 'package:JobforTech/Workdesk.dart';
import 'package:JobforTech/drawer%20pages/Edit%20Profile.dart';

import 'package:JobforTech/drawer%20pages/Payroll.dart';
import 'package:JobforTech/drawer%20pages/Referral.dart';
import 'package:JobforTech/drawer%20pages/Reviews.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // for bottom navbar
  int index = 0;
  final screens = [
    Home(),
    Workdeskpage(),
    Messagepage(),
  ];

  @override
  Widget build(BuildContext context) {
    // wrap with willpop to make exit confirm
    return WillPopScope(
        onWillPop: () => _onBackbuttonPressed(context),
        child: Scaffold(
          // Appbar with drawer, leading become drawer
          appBar: AppBar(
            backgroundColor: Color(0xfff0371D8),
            // center for title aka logo jobfortech
            centerTitle: true,
            leading: Builder(builder: (BuildContext context) {
              return IconButton(
                  // when pressed = no effect
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                  icon: Icon(Icons.account_circle_rounded));
            }),
            title: Image.asset(
              "images/Logoputih.png",
              height: 25,
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(Notifpage.nameRoute);
                  },
                  icon: Icon(Icons.notifications))
              // Icon(Icons.notifications)
            ],
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                // drawer wraped by sized box to custom height
                const SizedBox(
                  height: 150,
                  child: DrawerHeader(
                    decoration: BoxDecoration(color: Color(0xff0371D8)),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 30,
                          ),
                        ),
                        // alignment() to custom position
                        Align(
                          alignment: Alignment(-.2, -.35),
                          child: Text(
                            "Ini nama",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                        Align(
                          alignment: Alignment(0.2, 0.25),
                          child: Text("emailnyasiapa@mail.com",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12)),
                        )
                      ],
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.person,
                    color: Color(0xff0371D8),
                  ),
                  title: Text("Edit Profile",
                      style: const TextStyle(color: Colors.black)),
                  onTap: () {
                    Navigator.of(context).pushNamed(EditProfile.nameRoute);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.payment, color: Color(0xff0371D8)),
                  title: Text("Payroll", style: TextStyle(color: Colors.black)),
                  onTap: () {
                    Navigator.of(context).pushNamed(Payroll.nameRoute);
                  },
                ),

                ListTile(
                  leading: Icon(Icons.reviews, color: Color(0xff0371D8)),
                  title: Text("Reviews", style: TextStyle(color: Colors.black)),
                  onTap: () {
                    Navigator.of(context).pushNamed(Reviews.nameRoute);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.task, color: Color(0xff0371D8)),
                  title: Text("Referral Program",
                      style: TextStyle(color: Colors.black)),
                  onTap: () {
                    Navigator.of(context).pushNamed(Referral.nameRoute);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.info, color: Color(0xff0371D8)),
                  title:
                      Text("About Us", style: TextStyle(color: Colors.black)),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.phone, color: Color(0xff0371D8)),
                  title: Text("Help Center",
                      style: TextStyle(color: Colors.black)),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.logout, color: Color(0xff0371D8)),
                  title: Text("Log Out", style: TextStyle(color: Colors.black)),
                  onTap: () {},
                ),
              ],
            ),
          ),
          body: screens[index],
          // ANOTHER BOTTOM NAVBAR
          // bottomNavigationBar: ConvexAppBar(items: [
          //   TabItem(icon: Icons.home, title: 'Home'),
          //   TabItem(icon: Icons.map, title: 'Discovery'),
          //   TabItem(icon: Icons.add, title: 'Add'),
          //   TabItem(icon: Icons.message, title: 'Message'),
          //   TabItem(icon: Icons.people, title: 'Profile'),
          // ]),

          bottomNavigationBar: NavigationBarTheme(
            data: NavigationBarThemeData(
                indicatorColor: const Color(0xff0371D8),
                indicatorShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                // elevation for shadow
                elevation: 8,
                labelTextStyle: MaterialStateProperty.all(TextStyle(
                  fontSize: 14,
                ))),
            child: NavigationBar(
              height: 80,
              backgroundColor: Colors.white,
              // label show when selected
              labelBehavior:
                  NavigationDestinationLabelBehavior.onlyShowSelected,
              selectedIndex: index,
              onDestinationSelected: (index) =>
                  setState(() => this.index = index),
              destinations: [
                // selectedIcon = change icon if active selected
                NavigationDestination(
                  icon: Image.asset("images/Homedefault.png"),
                  label: "Home",
                  selectedIcon: Image.asset("images/Homeactive.png"),
                ),
                NavigationDestination(
                  icon: Image.asset("images/Workdesk.png"),
                  label: "Work Desk",
                  selectedIcon: Image.asset("images/Workdeskactive.png"),
                ),
                NavigationDestination(
                  icon: Image.asset("images/Chaticon.png"),
                  label: "Messages",
                  selectedIcon: Image.asset("images/Chaticonactive.png"),
                ),
              ],
            ),
          ),
        ));
  }

  // Exit app funct
  Future<bool> _onBackbuttonPressed(BuildContext context) async {
    bool exitApp = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("really????"),
            actions: <Widget>[
              // No
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  child: Text("No")),
              // YES
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                  child: Text("Yes"))
            ],
          );
        });
    return exitApp;
  }
}
