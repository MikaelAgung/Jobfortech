import 'package:JobforTech/Jobpage.dart';
import 'package:flutter/material.dart';

class Jobslistpage extends StatefulWidget {
  const Jobslistpage({super.key});
  static const nameRoute = 'Jobslistpage';

  @override
  State<Jobslistpage> createState() => _JobslistpageState();
}

class _JobslistpageState extends State<Jobslistpage> {
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
          title: Text("List of Jobs")),
      body: Container(
        child: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 241, 244, 255)),
                  padding: EdgeInsets.all(5),
                  child: ListTile(
                      leading: Container(
                        width: 40,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset("images/Company1.png"),
                        ),
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mobile Developer",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Company Name",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Text(
                              "Flutter, Experience",
                              style: TextStyle(color: Color(0xff197DDC)),
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.monetization_on_outlined,
                                color: Color(0xff197DDC),
                              ),
                              Text(
                                " IDR 6.5 - 8 jt",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      trailing: Text(
                        "10 Jan 2020",
                        style: TextStyle(fontStyle: FontStyle.italic),
                      )),
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(Jobpage.nameRoute);
              },
            );
          },
        ),
      ),
    );
  }
}
