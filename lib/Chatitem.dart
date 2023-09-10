import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

class Chatitem extends StatelessWidget {
  const Chatitem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(isiChat.nameRoute);
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(color: Color.fromARGB(255, 223, 223, 223)))),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: ListTile(
            leading: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 42,
                minHeight: 42,
                maxWidth: 60,
                maxHeight: 60,
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10.0),
                ),
                child: Image.asset(
                  "images/AdminJFT.png",
                ),
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(bottom: 3),
              child: Text("Admin"),
            ),
            subtitle: Text(
              "Silahkan lengkapi data diri untuk mengajukan verifikasi. \Verifikasi diperlukan agar dapat melamar project dan pekerjaan",
              style: TextStyle(fontSize: 13),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(top: 2.0),
              child: Column(
                children: [
                  Text("19.01"),
                  SizedBox(height: 5),
                  Container(
                    alignment: Alignment.center,
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: const Text(
                      "2",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class EmptyChat extends StatelessWidget {
  const EmptyChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 240, bottom: 16),
            child: Image.asset(
              "images/Chat.png",
              width: 80,
            ),
          ),
          Text(
            "You don't have any message",
            style: TextStyle(
                color: Color(0xff858585),
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class isiChat extends StatefulWidget {
  const isiChat({super.key});
  static const nameRoute = "isiChat";

  @override
  State<isiChat> createState() => _isiChatState();
}

class Pesan {
  final String text;
  final DateTime date;
  final bool akuYangKirim;

  const Pesan({
    required this.text,
    required this.date,
    required this.akuYangKirim,
  });
}

class _isiChatState extends State<isiChat> {
  List<Pesan> pesanPesan = [
    Pesan(
      text: "Halo",
      date: DateTime.now().subtract(Duration(minutes: 1)),
      akuYangKirim: false,
    ),
    Pesan(
      text:
          "Silahkan lengkapi data diri untuk mengajukan verifikasi. \Verifikasi diperlukan agar dapat melamar project dan pekerjaan",
      date: DateTime.now().subtract(Duration()),
      akuYangKirim: false,
    ),
  ];
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
          title: Text("Admin")),
      body: Column(
        children: [
          // CHAT
          Expanded(
              child: GroupedListView<Pesan, DateTime>(
            // FOR SCROLLABLE
            // reverse: true,
            order: GroupedListOrder.ASC,
            padding: EdgeInsets.all(8),
            elements: pesanPesan,
            groupBy: (pesan) => DateTime(
              pesan.date.year,
              pesan.date.month,
              pesan.date.day,
            ),
            groupHeaderBuilder: (Pesan pesan) => SizedBox(
              height: 40,
              child: Center(
                child: Card(
                  color: Theme.of(context).primaryColor,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      DateFormat.yMMMd().format(pesan.date),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            itemBuilder: (context, Pesan pesan) => Align(
              // IF SENT BY ME,  CENTER RIGHT
              alignment: pesan.akuYangKirim
                  ? Alignment.centerRight
                  : Alignment.centerLeft,
              child: Card(
                elevation: 8,
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(pesan.text),
                ),
              ),
            ),
          )),

          // KEYBOARD FOR TYPING
          Container(
            color: Colors.grey.shade300,
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(12),
                  hintText: "Ketik pesan ..."),
              onSubmitted: (text) {
                final pesan =
                    Pesan(text: text, date: DateTime.now(), akuYangKirim: true);
                setState(() => pesanPesan.add(pesan));
              },
            ),
          )
        ],
      ),
    );
  }
}
