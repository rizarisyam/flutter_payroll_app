import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final void Function(int)? onTap;
  const CustomBottomNavigationBar(
      {Key? key, required this.currentIndex, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color(0XFFFFFFFF),
      selectedItemColor: const Color(0XFF699BF7),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.house,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.addressBook,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.envelope,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.user,
            ),
            label: ""),
      ],
    );
  }
}
