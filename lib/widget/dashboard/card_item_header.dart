import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardItemHeader extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData iconName;
  const CardItemHeader(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.iconName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      height: 50,
      child: Card(
        color: const Color(0XFFFFFFFF),
        margin: EdgeInsets.zero,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FaIcon(
                iconName,
                size: 15,
                color: const Color(0XFF686868),
              ),
              Wrap(
                direction: Axis.vertical,
                spacing: 5,
                children: [
                  Text(
                    title,
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
