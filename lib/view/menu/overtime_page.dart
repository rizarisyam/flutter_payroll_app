import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payroll_app/view/account/edit_data.dart';
import 'package:payroll_app/view/submission/overtime_submiss.dart';
import 'package:payroll_app/widget/button_custom.dart';
import 'package:payroll_app/widget/custom_appbar.dart';
import 'package:intl/intl.dart';
import 'package:payroll_app/widget/date-picker.dart';

class OvertimePage extends StatefulWidget {
  const OvertimePage({Key? key, this.name, this.dateformat}) : super(key: key);
  final String? name;
  final String? dateformat;
  @override
  State<OvertimePage> createState() => _OvertimePageState();
}
class _OvertimePageState extends State<OvertimePage> {
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
            child: const BackToHome(
              title: "Lembur",
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
                    ListTile(
                      title: Align(
                        // alignment: Alignment.topLeft,
                        child: Text(
                          '${widget.dateformat}',
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      subtitle: Text(
                        '${widget.name}',
                        style: TextStyle(fontSize: 24, color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                      // width: double.infinity,
                      // child: 
                      // Text(
                      //   '${widget.name}',
                      //   style: TextStyle(fontSize: 20),
                      //   textAlign: TextAlign.center,
                      // ),
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
                  MaterialPageRoute(builder: (context) => const OvertimeSubmiss()),
                );
              },
              title: "Ajukan Lembur",
              colour: Color(0xFF0137CD),
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
