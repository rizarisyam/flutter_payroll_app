import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EmployeeItem extends StatelessWidget {
  const EmployeeItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border:
              Border(bottom: BorderSide(color: Color(0XFFECECEC), width: 1))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/avatar_img.png'),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Alex Maximillian",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0XFF303030),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Fullstack Developer",
                      style: TextStyle(color: Color(0XFFABABAB), fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
            Wrap(
              spacing: 10,
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
                  FontAwesomeIcons.envelope,
                  size: 25,
                  color: Color(0XFF717171),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
