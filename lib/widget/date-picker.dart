import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class CustomDatePicker extends StatelessWidget {
  const CustomDatePicker({Key? key, this.datePicker, this.onSelectionChanged, this.onSubmit}) : super(key: key);

  final DateRangePickerController? datePicker;
  final DateRangePickerSelectionChangedCallback? onSelectionChanged;
  final Function(Object?)? onSubmit;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 450,
        width: 320,
        child: Card(
          child: SfDateRangePicker(
            onSubmit: onSubmit,
            onSelectionChanged: onSelectionChanged,
            controller: datePicker,
            selectionMode: DateRangePickerSelectionMode.single,
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

