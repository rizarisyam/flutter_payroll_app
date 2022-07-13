import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payroll_app/widget/date-picker.dart';

import 'package:intl/intl.dart';

class AttendanceListPage extends StatefulWidget {
  const AttendanceListPage({Key? key}) : super(key: key);

  @override
  State<AttendanceListPage> createState() => _AttendanceListPageState();
}

class _AttendanceListPageState extends State<AttendanceListPage> {
  Future showDatetimePicker() {
    return showDialog<Widget>(
        context: context,
        builder: (BuildContext context) {
          return const CustomDatePicker();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          iconSize: 32,
          onPressed: () {
             Navigator.pop(context);
          },
          icon: const Icon(Icons.chevron_left_outlined),
        ),
        flexibleSpace: Image.asset(
          'assets/images/bg_header_login.png',
          fit: BoxFit.cover,
        ),
        title: const Text("Daftar Absensi"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: showDatetimePicker,
                    child: Card(
                      elevation: 0,
                      margin: EdgeInsets.zero,
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        tileColor: const Color.fromARGB(255, 229, 229, 229),
                        title: Text(DateFormat.yMMMM().format(DateTime.now())),
                        leading: const FaIcon(FontAwesomeIcons.solidCalendar),
                        trailing: const FaIcon(FontAwesomeIcons.caretDown),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: const Color(0XFFECECEC), width: 1))),
              child: Card(
                color: const Color.fromARGB(255, 249, 249, 249),
                elevation: 0,
                margin: EdgeInsets.zero,
                child: ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text("08:50"),
                      Text("19:00")
                    ],
                  ),
                  leading: Text(
                    DateFormat("d MMMM", "id_ID")
                              .format(DateTime.now()),
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  trailing: const Icon(Icons.keyboard_arrow_down),
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: const Color(0XFFECECEC), width: 1))),
              child: Card(
                color: const Color.fromARGB(255, 249, 249, 249),
                elevation: 0,
                margin: EdgeInsets.zero,
                child: ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text("08:50"),
                      Text("19:00")
                    ],
                  ),
                  leading: Text(
                    DateFormat("d MMMM", "id_ID")
                              .format(DateTime.now()),
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  trailing: const Icon(Icons.keyboard_arrow_down),
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: const Color(0XFFECECEC), width: 1))),
              child: Card(
                color: const Color.fromARGB(255, 249, 249, 249),
                elevation: 0,
                margin: EdgeInsets.zero,
                child: ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text("08:50"),
                      Text("19:00")
                    ],
                  ),
                  leading: Text(
                    DateFormat("d MMMM", "id_ID")
                              .format(DateTime.now()),
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  trailing: const Icon(Icons.keyboard_arrow_down),
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: const Color(0XFFECECEC), width: 1))),
              child: Card(
                color: const Color.fromARGB(255, 249, 249, 249),
                elevation: 0,
                margin: EdgeInsets.zero,
                child: ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text("08:50"),
                      Text("19:00")
                    ],
                  ),
                  leading: Text(
                    DateFormat("d MMMM", "id_ID")
                              .format(DateTime.now()),
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  trailing: const Icon(Icons.keyboard_arrow_down),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
