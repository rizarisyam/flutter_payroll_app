import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payroll_app/widget/custom_appbar.dart';


class InfoContractPage extends StatefulWidget {
  const InfoContractPage({Key? key}) : super(key: key);

  @override
  State<InfoContractPage> createState() => _InfoContractPageState();
}

class _InfoContractPageState extends State<InfoContractPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
        children: <Widget>[
          Container(
            height: 200,
            child: ProfileAppbar(
              title: "Info Pekerjaan",
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 80,
              right: 10,
              left: 10,
              bottom: 120,
            ),
            child: Card(
              shadowColor: Color.fromARGB(126, 255, 255, 255),
              elevation: 16,
              child: Column(
                children: const [
                  ListTile(
                    subtitle: Text(
                      "FD01",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.5,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    title: Text(
                      "ID Karyawan",
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        letterSpacing: 0.2,
                        fontSize: 14,
                        color: Color.fromARGB(255, 124, 124, 124),
                      ),
                    ),
                  ),
                  ListTile(
                    subtitle: Text(
                      "Fullstack Developer",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.5,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    title: Text(
                      "Peran",
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        letterSpacing: 0.2,
                        fontSize: 14,
                        color: Color.fromARGB(255, 124, 124, 124),
                      ),
                    ),
                  ),
                  ListTile(
                    subtitle: Text(
                      "Payroll Inc",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.5,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    title: Text(
                      "Nama Perusahaan",
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        letterSpacing: 0.2,
                        fontSize: 14,
                        color: Color.fromARGB(255, 124, 124, 124),
                      ),
                    ),
                  ),
                  ListTile(
                    subtitle: Text(
                      "Staff",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.5,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    title: Text(
                      "Level Pekerjaan",
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        letterSpacing: 0.2,
                        fontSize: 14,
                        color: Color.fromARGB(255, 124, 124, 124),
                      ),
                    ),
                  ),
                  ListTile(
                    subtitle: Text(
                      "Kontrak",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.5,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    title: Text(
                      "Status Pekerjaan",
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        letterSpacing: 0.2,
                        fontSize: 14,
                        color: Color.fromARGB(255, 124, 124, 124),
                      ),
                    ),
                  ),
                  ListTile(
                    subtitle: Text(
                      "1 Tahun 2 Bulan 3 Hari",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.5,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    title: Text(
                      "Masa Kerja",
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        letterSpacing: 0.2,
                        fontSize: 14,
                        color: Color.fromARGB(255, 124, 124, 124),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      );
  }
}