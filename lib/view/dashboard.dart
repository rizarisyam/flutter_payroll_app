import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:payroll_app/widget/dashboard/card_item_header.dart';
import 'package:payroll_app/widget/dashboard/card_item_main.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

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
                          Wrap(
                            direction: Axis.horizontal,
                            spacing: 10,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              const CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage('assets/images/avatar_img.png'),
                              ),
                              Wrap(
                                direction: Axis.vertical,
                                spacing: 3,
                                children: const [
                                  Text(
                                    "Alex Maximillian",
                                    style: TextStyle(
                                        color: Color(0XFFFFFFFF),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Fullstack Developer",
                                    style: TextStyle(
                                        color: Color(0XFFFFFFFF), fontSize: 12),
                                  )
                                ],
                              )
                            ],
                          ),
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
                            children: const [
                              CardItemHeader(
                                title: "pengajuan",
                                subtitle: "Reimbursement",
                                iconName: FontAwesomeIcons.rupiahSign,
                              ),
                              CardItemHeader(
                                title: "pengajuan",
                                subtitle: "Cuti",
                                iconName: FontAwesomeIcons.calendar,
                              ),
                              CardItemHeader(
                                title: "pengajuan",
                                subtitle: "Absensi",
                                iconName: FontAwesomeIcons.locationDot,
                              ),
                              CardItemHeader(
                                title: "pengajuan",
                                subtitle: "Lembur",
                                iconName: FontAwesomeIcons.briefcase,
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
                      pathName: '/attendance',
                    ),
                    CardItemMain(
                      path: "assets/svgs/majesticons_note-text.svg",
                      title: "Reimbursement",
                      pathName: '/attendance',
                    ),
                    CardItemMain(
                      path: "assets/svgs/fluent_clock-12-filled.svg",
                      title: "Lembur",
                      pathName: '/attendance',
                    ),
                    CardItemMain(
                      path: "assets/svgs/uim_calender.svg",
                      title: "Cuti",
                      pathName: '/attendance',
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
                      pathName: '/attendance',
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
                      pathName: '/attendance',
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Color(0XFFFFFFFF),
              width: double.infinity,
              height: size.height * 0.39,
              child: Padding(
                padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
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
                          child: const ListTile(
                            contentPadding: EdgeInsets.zero,
                            title: Text("test"),
                            trailing: Text("18 Mei 2022"),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  color: Color(0XFFE5EAF0), width: 1),
                            ),
                          ),
                          child: const ListTile(
                            contentPadding: EdgeInsets.zero,
                            title: Text("test"),
                            trailing: Text("18 Mei 2022"),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  color: Color(0XFFE5EAF0), width: 1),
                            ),
                          ),
                          child: const ListTile(
                            contentPadding: EdgeInsets.zero,
                            title: Text("test"),
                            trailing: Text("18 Mei 2022"),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  color: Color(0XFFE5EAF0), width: 1),
                            ),
                          ),
                          child: const ListTile(
                            contentPadding: EdgeInsets.zero,
                            title: Text("test"),
                            trailing: Text("18 Mei 2022"),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
