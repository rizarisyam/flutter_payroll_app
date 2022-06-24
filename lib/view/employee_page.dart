import 'package:flutter/material.dart';
import 'package:payroll_app/widget/employee/employee_item.dart';

class EmployeePage extends StatelessWidget {
  const EmployeePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0XFFFFFFFF),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Karyawan",
                      style: TextStyle(
                          color: Color(0XFF000000),
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "8 orang",
                      style: TextStyle(
                          color: Color(0XFFA2A6A6),
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: SizedBox(
                    width: double.infinity,
                    child: ListView.builder(
                        itemCount: 100,
                        itemBuilder: (context, index) {
                          return const EmployeeItem();
                        }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
