import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:payroll_app/models/employee_model.dart';

class EmployeeItem extends StatelessWidget {
  const EmployeeItem({Key? key}) : super(key: key);

  final String apiUrl = "https://reqres.in/api/users?per_page=15";
  Future<List<dynamic>> _fecthDataUsers() async {
    var result = await http.get(Uri.parse(apiUrl));
    return json.decode(result.body)['data'];
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: _fecthDataUsers(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return SizedBox(
            height: 600,
            child: ListView.builder(
              // scrollDirection: Axis.vertical,
              // shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 5),
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(color: Color(0XFFECECEC), width: 1))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage:
                                  NetworkImage(snapshot.data[index]['avatar']),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                Text(snapshot.data[index]['first_name'] + " " + snapshot.data[index]['last_name'],
                                  style: const TextStyle(
                                      fontSize: 16,
                                      color: Color(0XFF303030),
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  "Fullstack Developer",
                                  style: TextStyle(
                                      color: Color(0XFFABABAB), fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Wrap(
                          spacing: 12,
                          children: const [
                            FaIcon(
                              FontAwesomeIcons.whatsappSquare,
                              size: 25,
                              color: Color(0XFF0ABB87),
                            ),
                            FaIcon(
                              FontAwesomeIcons.squarePhone,
                              size: 25,
                              color: Color(0XFF407BFF),
                            ),
                            FaIcon(
                              FontAwesomeIcons.solidEnvelope,
                              size: 25,
                              color: Color(0XFF717171),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
