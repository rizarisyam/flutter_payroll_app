import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class CustomDatePicker extends StatelessWidget {
  const CustomDatePicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 450,
        width: 320,
        child: Card(
          child: SfDateRangePicker(
            todayHighlightColor: Colors.blueAccent,
            headerStyle: const DateRangePickerHeaderStyle(
                backgroundColor: Color.fromARGB(255, 15, 44, 210),
                textStyle: TextStyle(color: Colors.white)),
                headerHeight: 80,
            view: DateRangePickerView.month,
            selectionRadius: 14,
            monthFormat: 'MMM',
            showActionButtons: true,
            showNavigationArrow: true,
            onCancel: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}

// class CustomMonthPicker extends StatefulWidget {
//   // ------------------------------- CONSTRUCTORS ------------------------------
//   const CustomMonthPicker({
//     Key? key,
//   }) : super(key: key);

//   // --------------------------------- METHODS ---------------------------------
//   @override
//   State<CustomMonthPicker> createState() => _CustomMonthPickerState();
// }

// class _CustomMonthPickerState extends State<CustomMonthPicker> {
//   // ---------------------------------- FIELDS ---------------------------------
//   DateTime? _selected;

//   // --------------------------------- METHODS ---------------------------------
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: SizedBox(
//         height: 450,
//         width: 320,
//         child: Card(
//           child: TextButton(
//               child: const Text('BAHASA INDONESIA'),
//               onPressed: () => _onPressed(context: context, locale: 'id'),
//             ),
//         ),
//       ),
//     );
//   }

//   Future<void> _onPressed({
//     required BuildContext context,
//     String? locale,
//   }) async {
//     final localeObj = locale != null ? Locale(locale) : null;
//     final selected = await showMonthYearPicker(
//       context: context,
//       initialDate: _selected ?? DateTime.now().add(new Duration(days: 7)),
//       firstDate: DateTime(2019),
//       lastDate: DateTime(2023),
//       locale: localeObj,
//     );
//     // final selected = await showDatePicker(
//     //   context: context,
//     //   initialDate: _selected ?? DateTime.now(),
//     //   firstDate: DateTime(2019),
//     //   lastDate: DateTime(2022),
//     //   locale: localeObj,
//     // );
//     if (selected != null) {
//       setState(() {
//         _selected = selected;
//       });
//     }
//   }
// }