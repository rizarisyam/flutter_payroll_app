import 'package:flutter/material.dart';

class ButtonProfile extends StatelessWidget {
  const ButtonProfile({
    Key? key,
    required this.colour,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  final Color colour;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Material(
        color: colour,
        borderRadius: BorderRadius.circular(4),
        child: MaterialButton(
          // splashColor: Color.fromARGB(255, 239, 117, 117),
          animationDuration: Duration(milliseconds: 1000),
          onPressed: onPressed,
          minWidth: double.infinity,
          height: 50,
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
