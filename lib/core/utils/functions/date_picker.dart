import 'package:flutter/material.dart';


Future<DateTime?> datePicker({required BuildContext context, DateTime? lastDate}) async {
  DateTime? pickedDate = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(1900),
    lastDate: lastDate ?? DateTime.now()
  );
  return pickedDate;
}

