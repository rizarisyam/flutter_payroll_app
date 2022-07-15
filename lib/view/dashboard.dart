import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:payroll_app/view/submission/attend_submiss.dart';
import 'package:payroll_app/view/submission/overtime_submiss.dart';
import 'package:payroll_app/view/submission/paidleave_submission.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payroll_app/models/auth/current_user.dart';
import 'package:payroll_app/services/auth_service.dart';
import 'package:payroll_app/services/secure_storage.dart';

import 'package:payroll_app/widget/dashboard/card_item_header.dart';
import 'package:payroll_app/widget/dashboard/card_item_main.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shimmer/shimmer.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final SecureStorage secureStorage = SecureStorage();
  final AuthService _authService = AuthService();

  // CurrentUser? _currentUser;

  Future getToken() async {
    String token = await secureStorage.readSecureData(key: 'token');
    return token;
    // debugPrint('token : $token');
  }

  Future<CurrentUser?> getCurrentUser() async {
    String token = await getToken();
    CurrentUser? currentUser;
    currentUser = await _authService.fetchCurrentUser(token: token);
    return currentUser;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getToken();
    getCurrentUser();
  }

  @override
  Widget build(BuildContext context) {
    Size? size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: size.height * 0.25,
              width: double.infinity,
              color: Colors.red,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      'assets/images/bg_header_login.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    top: (size.height * 0.25) * 0.15,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FutureBuilder<CurrentUser?>(
                              future: getCurrentUser(),
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  CurrentUser? currentUser = snapshot.data;
                                  if (currentUser != null) {
                                    return Wrap(
                                      direction: Axis.horizontal,
                                      spacing: 10,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.center,
                                      children: [
                                        const CircleAvatar(
                                          radius: 30,
                                          backgroundImage: AssetImage(
                                              'assets/images/avatar_img.png'),
                                        ),
                                        Wrap(
                                          direction: Axis.vertical,
                                          spacing: 3,
                                          children: [
                                            Text(
                                              currentUser.name!,
                                              style: const TextStyle(
                                                  color: Color(0XFFFFFFFF),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              currentUser.email!,
                                              style: TextStyle(
                                                  color: Color(0XFFFFFFFF),
                                                  fontSize: 12),
                                            ),

                                            // Text(token!)
                                          ],
                                        )
                                      ],
                                    );
                                  }
                                }
                                return Wrap(
                                  direction: Axis.horizontal,
                                  spacing: 10,
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  children: [
                                    Shimmer.fromColors(
                                      baseColor: const Color(0XFFadb5bd),
                                      highlightColor: const Color(0xFFe9ecef),
                                      child: Container(
                                        width: 60,
                                        height: 60,
                                        decoration: const BoxDecoration(
                                            color: Color(0XFFadb5bd),
                                            shape: BoxShape.circle),
                                      ),
                                    ),
                                    Wrap(
                                      direction: Axis.vertical,
                                      spacing: 5,
                                      children: [
                                        Shimmer.fromColors(
                                          baseColor: const Color(0XFFadb5bd),
                                          highlightColor:
                                              const Color(0xFFe9ecef),
                                          child: Container(
                                            width: 150,
                                            height: 20,
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(2),
                                              ),
                                              color: Color(0XFFadb5bd),
                                            ),
                                          ),
                                        ),
                                        Shimmer.fromColors(
                                          baseColor: const Color(0XFFadb5bd),
                                          highlightColor:
                                              const Color(0xFFe9ecef),
                                          child: Container(
                                            width: 150,
                                            height: 20,
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(2),
                                              ),
                                              color: Color(0XFFadb5bd),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                );
                              }),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: (size.height * 0.3) * 0.55,
                    bottom: 0,
                    right: 10,
                    left: 10,
                    child: SizedBox(
                      height: 100,
                      // height: ((size.height * 0.3) * 0.5) * 0.7,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Wrap(
                            direction: Axis.horizontal,
                            spacing: 10,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: const CardItemHeader(
                                  title: "pengajuan",
                                  subtitle: "Reimbursement",
                                  iconName: FontAwesomeIcons.rupiahSign,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const PaidLeaveSubmiss()),
                                  );
                                },
                                child: const CardItemHeader(
                                  title: "pengajuan",
                                  subtitle: "Cuti",
                                  iconName: FontAwesomeIcons.calendar,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AttendaceSubmiss()),
                                  );
                                },
                                child: const CardItemHeader(
                                  title: "pengajuan",
                                  subtitle: "Absensi",
                                  iconName: FontAwesomeIcons.locationDot,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const OvertimeSubmiss()),
                                  );
                                },
                                child: const CardItemHeader(
                                  title: "pengajuan",
                                  subtitle: "Lembur",
                                  iconName: FontAwesomeIcons.briefcase,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: const Color(0XFFE5E5E5),
              width: double.infinity,
              height: size.height * 0.25,
              child: Center(
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  children: const [
                    CardItemMain(
                      path: "assets/svgs/bi_calendar-date-fill.svg",
                      title: "Kalendar",
                      pathName: '/menu/calendar',
                    ),
                    CardItemMain(
                      path: "assets/svgs/majesticons_note-text.svg",
                      title: "Reimbursement",
                      pathName: '/attendance',
                    ),
                    CardItemMain(
                      path: "assets/svgs/fluent_clock-12-filled.svg",
                      title: "Lembur",
                      pathName: '/menu/overtime',
                    ),
                    CardItemMain(
                      path: "assets/svgs/uim_calender.svg",
                      title: "Cuti",
                      pathName: '/menu/leave',
                    ),
                    CardItemMain(
                      path: "assets/svgs/ant-design_file-filled.svg",
                      title: "File Saya",
                      pathName: '/attendance',
                    ),
                    CardItemMain(
                      path:
                          "assets/svgs/fluent_task-list-square-rtl-24-filled.svg",
                      title: "Daftar Absensi",
                      pathName: '/attendance/list',
                    ),
                    CardItemMain(
                      path: "assets/svgs/uim_calender.svg",
                      svgColor: Color(0XFF0FA958),
                      title: "Absensi",
                      pathName: '/attendance',
                    ),
                    CardItemMain(
                      path: "assets/svgs/flat-color-icons_bookmark.svg",
                      title: "Slip Gaji",
                      pathName: '/menu/salary',
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: const Color(0XFFFFFFFF),
                width: double.infinity,
                height: size.height,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Pengumuman",
                            style: TextStyle(
                                color: Color(0XFF4684EB),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Lihat Lainnya",
                            style: TextStyle(
                              color: Color(0XFF4684EB),
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: Color(0XFFE5EAF0), width: 1),
                              ),
                            ),
                            child: ListTile(
                              contentPadding: EdgeInsets.zero,
                              title: const Text("Besok Pulang Cepet"),
                              trailing: Text(DateFormat("d MMMM yyyy", "id_ID")
                                  .format(DateTime.now())),
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: Color(0XFFE5EAF0), width: 1),
                              ),
                            ),
                            child: ListTile(
                              contentPadding: EdgeInsets.zero,
                              title: const Text("Hari ini kerja setengah hari"),
                              trailing: Text(DateFormat("d MMMM yyyy", "id_ID")
                                  .format(DateTime.now())),
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: Color(0XFFE5EAF0), width: 1),
                              ),
                            ),
                            child: ListTile(
                              contentPadding: EdgeInsets.zero,
                              title:
                                  const Text("Bulan depan gaji naik Rp. 1.000"),
                              trailing: Text(DateFormat("d MMMM yyyy", "id_ID")
                                  .format(DateTime.now())),
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: Color(0XFFE5EAF0), width: 1),
                              ),
                            ),
                            child: ListTile(
                              contentPadding: EdgeInsets.zero,
                              title: const Text("Gaji dituker jadi sembako"),
                              trailing: Text(DateFormat("d MMMM yyyy", "id_ID")
                                  .format(DateTime.now())),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
