import 'package:flutter/material.dart';

class DatePickerHelper {
  static Future<void> selectDate({
    required BuildContext context,
    required TextEditingController controller,
  }) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate:  DateTime.now(),
    );

    if (pickedDate != null) {
      controller.text = "${pickedDate.toLocal()}".split(' ')[0]; // Format date
    }
  }
}
