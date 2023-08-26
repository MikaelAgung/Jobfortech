import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});
  static const nameRoute = 'editakun';

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Front-End"), value: "Front-End"),
      DropdownMenuItem(child: Text("Back-End"), value: "Back-End"),
      DropdownMenuItem(child: Text("UI/UX Designer"), value: "UI/UX Designer"),
      DropdownMenuItem(child: Text("UI Designer"), value: "UI Designer"),
      DropdownMenuItem(child: Text("UX Designer"), value: "UX Designer"),
      DropdownMenuItem(child: Text("UX Copywriter"), value: "UX Copywriter"),
      DropdownMenuItem(child: Text("Illustrator"), value: "Illustrator"),
    ];
    return menuItems;
  }

// DROPDOWN DEFAUT
  String selectedValue = "Front-End";

// For calendar
  TextEditingController _kalender = TextEditingController();

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
          title: Text("Edit Profile")),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 28, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Account",
                style: TextStyle(fontSize: 30, color: Color(0xff197DDC)),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 80,
                    child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(40.0),
                        ),
                        child: Image.asset("images/Orang1.png")),
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextButton(
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              backgroundColor: Color(0xff197DDC),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25))),
                          onPressed: () {},
                          child: Text(
                            "Upload Photo",
                            style: TextStyle(color: Colors.white),
                          )),
                      Text(
                        "Ut porttitor vel convallis id neque \nmolestie. Nunc odio fermentum dolor \npharetra eget",
                        style: TextStyle(fontSize: 10),
                        textAlign: TextAlign.end,
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "Full Name",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextField(),
              SizedBox(
                height: 20,
              ),
              // DROPDOWN
              Text(
                "Your Tech. Role",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              DropdownButtonFormField(
                  value: selectedValue,
                  items: dropdownItems,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue!;
                    });
                  }),
              SizedBox(
                height: 24,
              ),

              Text(
                "Birth Date",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              // Funct for calendar
              TextField(
                controller: _kalender,
                onTap: () async {
                  DateTime? picktanggal = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime.now());

                  if (picktanggal != null) {
                    setState(() {
                      _kalender.text =
                          DateFormat("yyy-MM-dd").format(picktanggal);
                    });
                  }
                },
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "Address",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextField(),
              SizedBox(
                height: 24,
              ),
              // CONTACT
              Text(
                "Contact",
                style: TextStyle(fontSize: 30, color: Color(0xff197DDC)),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "Phone Number",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    prefixIcon: Text("+62 "),
                    prefixIconConstraints:
                        BoxConstraints(minHeight: 0, minWidth: 10)),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "Email",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextField(),
              SizedBox(
                height: 24,
              ),
              Text(
                "Link Account",
                style: TextStyle(fontSize: 30, color: Color(0xff197DDC)),
              ),
              SizedBox(
                height: 24,
              ),
              TextButton(
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Color(0xff197DDC)),
                      minimumSize: Size.fromHeight(40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                  onPressed: () {},
                  child: Text(
                    "Add Link",
                    style: TextStyle(color: Color(0xff197DDC)),
                  )),
              SizedBox(
                height: 24,
              ),
              Text(
                "CV",
                style: TextStyle(fontSize: 30, color: Color(0xff197DDC)),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Color(0xff197DDC)),
                      minimumSize: Size.fromHeight(40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                  onPressed: () {},
                  child: Text(
                    "Upload CV",
                    style: TextStyle(color: Color(0xff197DDC)),
                  )),

              SizedBox(
                height: 20,
              ),

              TextButton(
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Color(0xff197DDC),
                      side: BorderSide(color: Color(0xff197DDC)),
                      minimumSize: Size.fromHeight(40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                  onPressed: () {},
                  child: Text(
                    "Save Changes",
                    style: TextStyle(color: Color(0xffffffff)),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
