// A reusable function that returns a custom AppBar widget
// It takes a 'title' parameter which will be displayed as the title of the AppBar

// A custom widget that renders a calendar using the TableCalendar package.
// The widget allows the user to select a date from the calendar.
// Parameters:
// - selectedDate: The currently selected date in the calendar.
// - onDaySelected: A callback function that updates the state when a new day is selected.
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';

class BookingCalendar extends StatelessWidget {
  final DateTime selectedDate;
  final Function(DateTime, DateTime) onDaySelected;

  const BookingCalendar({
    super.key,
    required this.selectedDate,
    required this.onDaySelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      alignment: Alignment.center,
      child: TableCalendar(
        focusedDay: DateTime.now(),
        firstDay: DateTime(2020),
        lastDay: DateTime(2030),
        selectedDayPredicate: (day) => isSameDay(day, selectedDate),
        onDaySelected: onDaySelected,
        calendarStyle: const CalendarStyle(
          defaultTextStyle: TextStyle(fontSize: 12),
          todayTextStyle: TextStyle(fontSize: 12),
          selectedTextStyle: TextStyle(fontSize: 12),
        ),
        daysOfWeekStyle: const DaysOfWeekStyle(
          weekdayStyle: TextStyle(fontSize: 10),
          weekendStyle: TextStyle(fontSize: 10),
        ),
        rowHeight: 30.h,
        daysOfWeekHeight: 30.h,
      ),
    );
  }
}
