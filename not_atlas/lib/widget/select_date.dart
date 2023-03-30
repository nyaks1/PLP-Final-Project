// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/cupertino.dart';

abstract class CalendarDatePicker2 extends StatelessWidget {
  CalendarDatePicker2({
    Key? key,
    DateTime? initialSelectedDate,
    required this.config,
    required this.onValueChanged,
    required this.value,
  })  : _initialSelectedDate = initialSelectedDate ?? value.first,
        super(key: key);

  final CalendarDatePicker2Config config;
  final ValueChanged<DateTime> onValueChanged;
  final List<DateTime> value;
  final DateTime _initialSelectedDate;

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
