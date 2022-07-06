import 'package:flutter/material.dart';
import 'package:payroll_app/view/account/edit_data.dart';
import 'package:payroll_app/widget/button_custom.dart';
import 'package:payroll_app/widget/custom_appbar.dart';

class InfoPersonalPage extends StatefulWidget {
  const InfoPersonalPage({Key? key}) : super(key: key);

  @override
  State<InfoPersonalPage> createState() => _InfoPersonalPageState();
}

class _InfoPersonalPageState extends State<InfoPersonalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 200,
            child: ProfileAppbar(
              title: "Info Pribadi",
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
              height: (MediaQuery.of(context).size.height) * 0.9,
              child: Card(
                shadowColor: Color.fromARGB(126, 255, 255, 255),
                elevation: 16,
                child: Column(
                  children: const [
                    ListTile(
                      subtitle: Text(
                        "3175030604000001",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      title: Text(
                        "No. KTP",
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
                        "3175030604000001",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      title: Text(
                        "No. Kartu Keluarga",
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
                        "Jakarta",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      title: Text(
                        "Tempat Lahir",
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
                        "07 September, 2000",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      title: Text(
                        "Tanggal Lahir",
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
                        "Laki - Laki",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      title: Text(
                        "Gender",
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
                        "Kontrak 1 Tahun",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      title: Text(
                        "Status Kontrak",
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
          ),
          Align(
            alignment: Alignment(1.0, 0.8),
            child: ButtonProfile(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EditData()),
                );
              },
              title: "Ajukan Perubahan Data",
              colour: Color.fromARGB(255, 205, 1, 1),
            ),
          )
        ],
      ),
    );
  }
}
