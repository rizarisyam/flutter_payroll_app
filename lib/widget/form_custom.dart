import 'package:flutter/material.dart';

class FormIconCustom extends StatelessWidget {
  const FormIconCustom({
    Key? key,
    required this.label,
    this.icon,
  }) : super(key: key);

  final String label;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: TextFormField(
            decoration: InputDecoration(
              icon: Icon(icon),
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                    width: 0.5, color: Color.fromARGB(255, 177, 177, 177)),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(width: 0.5, color: Colors.black),
              ),
              border: const UnderlineInputBorder(
                borderSide: BorderSide(
                    width: 0.5, color: Color.fromARGB(255, 177, 177, 177)),
              ),
              labelText: label,
            ),
          ),
        ),
      ],
    );
  }
}

class FormCustom extends StatelessWidget {
  const FormCustom({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: TextFormField(
            decoration: InputDecoration(
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                    width: 0.5, color: Color.fromARGB(255, 177, 177, 177)),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(width: 0.5, color: Colors.black),
              ),
              border: const UnderlineInputBorder(
                borderSide: BorderSide(
                    width: 0.5, color: Color.fromARGB(255, 177, 177, 177)),
              ),
              labelText: label,
            ),
          ),
        ),
      ],
    );
  }
}

class FormCustomBg extends StatefulWidget {
  const FormCustomBg({Key? key, this.helpText, this.label}) : super(key: key);

  final String? label;
  final String? helpText;

  @override
  State<FormCustomBg> createState() => _FormCustomBgState();
}

class _FormCustomBgState extends State<FormCustomBg> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: TextFormField(
            // obscuringCharacter: '&',
            obscureText: _isObscure,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
              filled: true,
              fillColor: const Color(0xFFE2E2E2),
              suffixIcon: IconButton(
                    icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    }),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6.0),
                borderSide: BorderSide.none,
              ),
              // labelText: '${widget.label}',
              hintText: '${widget.helpText}',
            ),
          ),
        ),
      ],
    );
  }
}


class OptionCustom extends StatefulWidget {
  const OptionCustom({Key? key, this.textHint}) : super(key: key);
  final String? textHint;

  @override
  State<OptionCustom> createState() => _OptionCustomState();
}

class _OptionCustomState extends State<OptionCustom> {
  // Initial Selected Value
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: const EdgeInsets.only(
              right: 20,
              left: 20,
            ),
            width: double.infinity,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DropdownButtonFormField(
                  icon: const Icon(Icons.keyboard_arrow_down),
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          width: 0.5,
                          color: Color.fromARGB(255, 177, 177, 177)),
                    ),
                    labelText: "Data",
                  ),
                  // dropdownColor: Colors.blueAccent,
                  // value: dropdownvalue,
                  hint: Text(
                    '${widget.textHint}',
                    style: const TextStyle(color: Colors.black),
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                ),
              ],
            ))
      ],
    );
  }
}
