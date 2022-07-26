import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payroll_app/widget/button_custom.dart';
import 'package:payroll_app/widget/form_custom.dart';
import 'package:payroll_app/widget/date-picker.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class AttendaceSubmiss extends StatefulWidget {
  const AttendaceSubmiss({Key? key}) : super(key: key);

  @override
  State<AttendaceSubmiss> createState() => _AttendaceSubmissState();
}

class _AttendaceSubmissState extends State<AttendaceSubmiss> {
  TextEditingController attendController = TextEditingController();
  TextEditingController reasonController = TextEditingController();
  String _date = DateFormat('E, d MMM yyyy').format(DateTime.now()).toString();

  Future showDatetimePicker() {
    return showDialog<Widget>(
        context: context,
        builder: (BuildContext context) {
          return CustomDatePicker(
              onSelectionChanged: _onSelectionChanged,
              onSubmit: (args) {
                debugPrint('test' + args.toString());
                setState(() {
                  _date;
                });
                attendController.text = _date;
                debugPrint('datetime ' + _date.toString());
                Navigator.of(context).pop();
              }
              );
        });
  }

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    SchedulerBinding.instance.addPostFrameCallback((duration) {
      setState(() {
        _date = DateFormat('E, d MMM yyyy', 'id').format(args.value).toString();
      });
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
        title: const Text("Ajukan Absensi"),
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
                  child: 
                  Card(
                    color: const Color.fromARGB(255, 229, 229, 229),
                    elevation: 0,
                    margin: EdgeInsets.zero,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0, right: 24),
                      child: TextFormField(
                        readOnly: true,
                        controller: attendController,
                        onTap: showDatetimePicker,
                        keyboardType: TextInputType.none,
                        decoration: InputDecoration(
                          hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 119, 119, 119)),
                          hintText: "Pilih Tanggal",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                style: BorderStyle.none, width: 0),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          icon: const FaIcon(
                            FontAwesomeIcons.solidCalendar,
                            color: Color.fromARGB(255, 130, 130, 130),
                          ),
                          suffixIcon: const Padding(
                            padding: EdgeInsets.only(left: 40, top: 10),
                            child: FaIcon(FontAwesomeIcons.caretDown),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const CheckboxCustom(
                  title: "Clock In",
                ),
                const SizedBox(
                  height: 10,
                ),
                const CheckboxCustom(
                  title: "Clock Out",
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
                          title: "Ajukan Absensi",
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