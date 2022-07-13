import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';
import 'package:payroll_app/widget/button_custom.dart';
import 'package:payroll_app/widget/date-picker.dart';
import 'package:payroll_app/widget/form_custom.dart';
import 'package:payroll_app/widget/salary_card.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: ElementBottomSheet(),
      ),
    );
  }
}

class ElementBottomSheet extends StatefulWidget {
  const ElementBottomSheet({Key? key}) : super(key: key);

  @override
  State<ElementBottomSheet> createState() => _ElementBottomSheetState();
}

class _ElementBottomSheetState extends State<ElementBottomSheet> {
  bool showWidget = false;
  DateTime? _selected;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      show(context);
    });
  }

  Future showDatetimePicker() {
    return showDialog<Widget>(
        context: context,
        builder: (BuildContext context) {
          return const CustomDatePicker();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    'assets/images/bg_header_login.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, bottom: 15, top: 40),
                  child: InkWell(
                    onTap: () => _onPressed(context: context, locale: 'id'),
                    child: Card(
                      elevation: 0,
                      margin: EdgeInsets.zero,
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        tileColor: const Color.fromARGB(255, 229, 229, 229),
                        title: Text(DateFormat("MMMM yyyy", "id_ID")
                            .format(DateTime.now())),
                        leading: const FaIcon(FontAwesomeIcons.solidCalendar),
                        trailing: const FaIcon(FontAwesomeIcons.caretDown),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 110,
                    right: 12,
                    left: 12,
                    bottom: 0,
                  ),
                  child: SizedBox(
                    height: 120,
                    child: Card(
                      shadowColor: const Color.fromARGB(126, 255, 255, 255),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: Color(0XFFECECEC), width: 1),
                              ),
                            ),
                            width: double.infinity,
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 12),
                              child: Text(
                                'Rahasia',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 237, 16, 0)),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 14, vertical: 12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Alex Maximillian",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0XFF303030),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Fullstack Developer",
                                      style: TextStyle(
                                          color: Color(0XFFABABAB),
                                          fontSize: 14),
                                    ),
                                  ],
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
          CardEarns(),
          CardCashOut()
        ],
      ),
    );
  }

  void show(BuildContext context) {
    showModalBottomSheet<void>(
      isScrollControlled: true,
      isDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Container(
            height: 200,
            color: const Color.fromARGB(255, 255, 255, 255),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text("Masukan Sandi"),
                    ],
                  ),
                ),
                const FormCustomBg(
                  helpText: "Ketikan Sandi",
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: ButtonProfile(
                    onPressed: () {
                      Navigator.pop(context,MaterialPageRoute(builder: (context) => CardEarns()));
                    },
                    title: "Kirim",
                    colour: const Color.fromARGB(255, 1, 55, 205),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> _onPressed({
    required BuildContext context,
    String? locale,
  }) async {
    final localeObj = locale != null ? Locale(locale) : null;
    final selected = await showMonthPicker(
      context: context,
      initialDate: _selected ?? DateTime.now().add(new Duration(days: 7)),
      firstDate: DateTime(2019),
      lastDate: DateTime(2023),
      locale: localeObj,
    );
    // final selected = await showDatePicker(
    //   context: context,
    //   initialDate: _selected ?? DateTime.now(),
    //   firstDate: DateTime(2019),
    //   lastDate: DateTime(2022),
    //   locale: localeObj,
    // );
    if (selected != null) {
      setState(() {
        _selected = selected;
      });
    }
  }
}
