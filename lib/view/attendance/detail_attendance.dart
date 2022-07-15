import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:payroll_app/maps_demo.dart';
import 'package:payroll_app/widget/button_custom.dart';
import 'package:payroll_app/widget/form_custom.dart';

class DetailAttendance extends StatefulWidget {
  const DetailAttendance({Key? key}) : super(key: key);

  @override
  State<DetailAttendance> createState() => _DetailAttendanceState();
}

class _DetailAttendanceState extends State<DetailAttendance> {
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
        title: Text(
          DateFormat.Hm().format(DateTime.now()),
          style: const TextStyle(
              color: Color(0XFFFFFFFF),
              fontWeight: FontWeight.w400,
              fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const FormIconCustom(
            label: "Catatan",
            icon: Icons.notes_rounded,
          ),
          const FormIconCustom(
            label: "Catatan",
            icon: Icons.camera_alt,
          ),
          const SizedBox(
            height: 20,
          ),
          ButtonProfile(
              colour: Color.fromARGB(255, 2, 82, 241),
              title: "Kirim",
              onPressed: () {})
        ],
      ),
    );
  }
}
