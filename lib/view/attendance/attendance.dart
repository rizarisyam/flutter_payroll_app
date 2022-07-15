import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:payroll_app/models/auth/current_user.dart';
import 'package:payroll_app/services/auth_service.dart';

class AttendancePage extends StatefulWidget {
  const AttendancePage({Key? key}) : super(key: key);
  static String pathName = '/attendance/list';

  @override
  State<AttendancePage> createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  final AuthService _authService = AuthService();

  Future<CurrentUser?> getCurrentUser() async {
    CurrentUser? currentUser;
    currentUser = await _authService.fetchCurrentUser();
    return currentUser;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: size.height * 0.5,
              color: const Color(0XFFFFFFFF),
              child: Stack(
                children: [
                  Positioned.fill(
                    bottom: 40,
                    child: Image.asset(
                      'assets/images/bg_header_login.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: InkWell(
                        onTap: () => Navigator.pop(context),
                        child: const FaIcon(
                          FontAwesomeIcons.angleLeft,
                          color: Color(0XFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        child: Text(
                          "Absensi",
                          style: TextStyle(
                              color: Color(0XFFFFFFFF),
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          DateFormat.Hm().format(DateTime.now()),
                          style: const TextStyle(
                              color: Color(0XFFFFFFFF),
                              fontWeight: FontWeight.w700,
                              fontSize: 28),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          DateFormat("EEEE, d MMMM yyyy", "id_ID")
                              .format(DateTime.now()),
                          style: const TextStyle(
                              color: Color(0XFFFFFFFF),
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Card(
                          margin: EdgeInsets.zero,
                          color: const Color(0XFF4684EB),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Wrap(
                              spacing: 8,
                              alignment: WrapAlignment.center,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: const [
                                FaIcon(
                                  FontAwesomeIcons.circleExclamation,
                                  size: 14,
                                  color: Color(0XFFFFFFFF),
                                ),
                                Text(
                                  "Selfie untuk melakukan absen",
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0XFFFFFFFF)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        FutureBuilder<CurrentUser?>(
                            future: getCurrentUser(),
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                CurrentUser? user = snapshot.data;
                                List<Calendar>? calendar =
                                    user!.shift!.calendar;
                                if (user != null) {
                                  return Wrap(
                                    spacing: 8,
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center,
                                    children: [
                                      Text(
                                        user.shift!.workingHourStart!,
                                        style: const TextStyle(
                                            fontSize: 20,
                                            color: Color(0XFFFFFFFF),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const FaIcon(
                                        FontAwesomeIcons.minus,
                                        color: Colors.white,
                                        size: 14,
                                      ),
                                      Text(
                                        user.shift!.workingHourEnd!,
                                        style: const TextStyle(
                                            fontSize: 20,
                                            color: Color(0XFFFFFFFF),
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  );
                                }
                              }
                              return const CircularProgressIndicator();
                            }),
                      ],
                    ),
                  ),
                  Positioned(
                    top: (size.height * 0.5) * 0.82,
                    bottom: 0,
                    left: 30,
                    right: 30,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: const Color(0XFFFFFFFF),
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 0.5,
                              blurRadius: 15,
                              offset: const Offset(
                                0.0, // Move to right 10  horizontally
                                15.0, // Move to bottom 10 Vertically
                              ),
                            )
                          ]),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: const [
                          Expanded(
                            child: Card(
                              color: Color(0XFF4684EB),
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  child: Text(
                                    "Clock In",
                                    style: TextStyle(
                                        color: Color(0XFFFFFFFF), fontSize: 16),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Card(
                              color: Color(0XFF4684EB),
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  child: Text(
                                    "Clock Out",
                                    style: TextStyle(
                                        color: Color(0XFFFFFFFF), fontSize: 16),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                // color: const Color(0XFFE5E5E5),
                width: double.infinity,
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 30),
                    child: Wrap(
                      direction: Axis.horizontal,
                      runSpacing: 20,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Riwayat Absen",
                              style: TextStyle(
                                  color: Color(0XFF4684EB),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(AttendancePage.pathName);
                              },
                              child: const Text(
                                'Lihat Log',
                                style: TextStyle(color: Color(0XFFA2A6A6)),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "09:00",
                              style: TextStyle(
                                  color: Color(0XFF3C3C3C),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            Text(
                              "Clock in",
                              style: TextStyle(
                                  fontSize: 18, color: Color(0XFFA2A6A6)),
                            ),
                            FaIcon(
                              FontAwesomeIcons.angleRight,
                              color: Color(0XFF717171),
                            )
                          ],
                        )
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
