import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payroll_app/view/account/info_contract.dart';
import 'package:payroll_app/view/account/info_payroll.dart';
import 'package:payroll_app/view/account/info_personal.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        'assets/images/bg_header_login.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Akun Profil",
                              style: TextStyle(
                                  color: Color(0XFFFFFFFF),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Wrap(
                              direction: Axis.horizontal,
                              spacing: 10,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                const CircleAvatar(
                                  radius: 25,
                                  backgroundImage: AssetImage(
                                      'assets/images/avatar_img.png'),
                                ),
                                Wrap(
                                  direction: Axis.vertical,
                                  children: const [
                                    Text(
                                      "Alex Maximillian",
                                      style: TextStyle(
                                          color: Color(0XFFFFFFFF),
                                          fontSize: 16,
                                          letterSpacing: 1,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Fullstack Developer",
                                      style: TextStyle(
                                          color: Color(0XFFFFFFFF),
                                          fontSize: 11,
                                          letterSpacing: 1),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "Info Profil",
                              style: TextStyle(
                                  color: Color(0XFF3D3D3D),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.5),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const InfoPersonalPage()),
                              )
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Color(0XFFECECEC),
                                  ),
                                ),
                              ),
                              child: ListTile(
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                leading: SvgPicture.asset(
                                    'assets/svgs/bxs_user-circle.svg'),
                                title: const Text(
                                  "Info Pribadi",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                trailing: IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const InfoPersonalPage()),
                                      );
                                    },
                                    icon: const FaIcon(
                                      FontAwesomeIcons.angleRight,
                                      size: 16,
                                    )),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const InfoContractPage()),
                              )
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Color(0XFFECECEC),
                                  ),
                                ),
                              ),
                              child: ListTile(
                                contentPadding:
                                    const EdgeInsets.only(left: 11, right: 10),
                                leading: SvgPicture.asset(
                                    'assets/svgs/fa6-solid_file-contract.svg'),
                                title: const Text(
                                  "Info Kontrak",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                trailing: IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const InfoContractPage()),
                                      );
                                    },
                                    icon: const FaIcon(
                                      FontAwesomeIcons.angleRight,
                                      size: 16,
                                    )),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const InfoPayrollPage()),
                              )
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Color(0XFFECECEC),
                                  ),
                                ),
                              ),
                              child: ListTile(
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                leading: SvgPicture.asset(
                                    'assets/svgs/fluent_payment-20-filled.svg'),
                                title: const Text(
                                  "Info Payroll",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                trailing: IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const InfoPayrollPage()),
                                      );
                                    },
                                    icon: const FaIcon(
                                      FontAwesomeIcons.angleRight,
                                      size: 16,
                                    )),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "Pengaturan",
                                  style: TextStyle(
                                      color: Color(0XFF3D3D3D),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.5),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => {
                                  
                                },
                              child:Container(
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color(0XFFECECEC),
                                    ),
                                  ),
                                ),
                                child: ListTile(
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  leading: SvgPicture.asset(
                                      'assets/svgs/bxs_lock.svg'),
                                  title: const Text(
                                    "Ubah Password",
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                  trailing: IconButton(
                                      onPressed: () {},
                                      icon: const FaIcon(
                                        FontAwesomeIcons.angleRight,
                                        size: 16,
                                      )),
                                ),
                              ),
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 50,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    const Color(0xFFCD0101),
                                  ),
                                  elevation: MaterialStateProperty.all(5),
                                ),
                                child: const Text(
                                  "Keluar Dari Akun",
                                  style: TextStyle(
                                    color: Color(0XFFFFFFFF),
                                  ),
                                ),
                                onPressed: () {},
                              ),
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
