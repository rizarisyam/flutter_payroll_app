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
