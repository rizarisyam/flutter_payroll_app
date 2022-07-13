import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payroll_app/view/account/edit_data.dart';
import 'package:payroll_app/widget/button_custom.dart';
import 'package:payroll_app/widget/custom_appbar.dart';
import 'package:intl/intl.dart';
import 'package:payroll_app/widget/date-picker.dart';
import 'package:payroll_app/view/submission/paidleave_submission.dart';

class PaidLeavePage extends StatefulWidget {
  const PaidLeavePage({Key? key}) : super(key: key);

  @override
  State<PaidLeavePage> createState() => _PaidLeavePageState();
}

class _PaidLeavePageState extends State<PaidLeavePage> {
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
      body: Stack(
        children: <Widget>[
          Container(
            height: 200,
            child: const ProfileAppbar(
              title: "Cuti",
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 80,
              right: 10,
              left: 10,
              bottom: 120,
            ),
            child: SizedBox(
              height: 150,
              child: Card(
                shadowColor: const Color.fromARGB(126, 255, 255, 255),
                elevation: 16,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      child: const Text(
                        'Tidak ada cuti yang diajukan',
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.0, -0.2),
            child: ButtonProfile(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PaidLeaveSubmiss()),
                );
              },
              title: "Ajukan Cuti",
              colour: const Color.fromARGB(255, 1, 55, 205),
            ),
          ),
          Align(
          alignment: const Alignment(0.0, 0.1),
          child:Padding(
            padding: const EdgeInsets.only(
              top: 80,
              right: 15,
              left: 15,
              bottom: 120,
            ),
            child: Expanded(
              child: InkWell(
                onTap: showDatetimePicker,
                child: Card(
                  elevation: 0,
                  margin: EdgeInsets.zero,
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    tileColor: const Color.fromARGB(255, 229, 229, 229),
                    title: Text(DateFormat("MMMM yyyy", "id_ID")
                              .format(DateTime.now())),
                    leading: const FaIcon(FontAwesomeIcons.solidCalendar),
                    trailing: const FaIcon(FontAwesomeIcons.caretDown),
                  ),
                ),
              ),
            ),
          ),
          )
        ],
      ),
    );
  }
}
