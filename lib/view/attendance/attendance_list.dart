import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payroll_app/widget/date-picker.dart';

import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

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
                      margin: EdgeInsets.zero,
                      child: ListTile(
                        title: Text(DateFormat.yMMMM().format(DateTime.now())),
                        leading: FaIcon(FontAwesomeIcons.calendar),
                        trailing: FaIcon(FontAwesomeIcons.caretDown),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: SfCalendar(
                view: CalendarView.month,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
