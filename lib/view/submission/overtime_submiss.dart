import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payroll_app/widget/button_custom.dart';
import 'package:payroll_app/widget/form_custom.dart';
import 'package:payroll_app/widget/date-picker.dart';
import 'package:intl/intl.dart';

class OvertimeSubmiss extends StatefulWidget {
  const OvertimeSubmiss({Key? key}) : super(key: key);

  @override
  State<OvertimeSubmiss> createState() => _OvertimeSubmissState();
}

class _OvertimeSubmissState extends State<OvertimeSubmiss> {
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
          icon: Icon(Icons.chevron_left_outlined),
        ),
        flexibleSpace: Image.asset(
          'assets/images/bg_header_login.png',
          fit: BoxFit.cover,
        ),
        title: const Text("Ajukan Lembur"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            bottom: 150,
          ),
          child: SizedBox(
            // height: 250,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, bottom: 10, top: 16),
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
                        title: Text(DateFormat("MMMM yyyy", "id_ID")
                              .format(DateTime.now())),
                        leading: const FaIcon(FontAwesomeIcons.solidCalendar),
                        trailing: const FaIcon(FontAwesomeIcons.caretDown),
                      ),
                    ),
                  ),
                ),
                const FormIconCustom(
                  label: "Keterangan",
                  icon: Icons.notes_rounded,
                ),
                Positioned(
                  right: 0,
                  left: 0,
                  bottom: 0,
                  top: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        ButtonProfile(
                          onPressed: () {},
                          title: "Ajukan Lembur",
                          colour: Color.fromARGB(255, 1, 55, 205),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
