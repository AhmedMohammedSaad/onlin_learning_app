import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../components/appbar_mthode.dart';
import '../components/bottom_book_botton.dart';
import '../components/class_image.dart';
import '../widget/booking_widget/booking_calendar.dart';
import '../widget/booking_widget/class_ingo_row.dart';

//! The main StatefulWidget for the booking page.
//! It contains the layout and integrates all the individual widgets (AppBar, Calendar, Class Info, and Buttons).
class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  //! Variable to track the selected date on the calendar
  DateTime dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //! Display the custom appbar
      appBar: appbar(
          'Class Booking', const Icon(Icons.notifications_none_outlined)),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //! Calendar widget that allows users to select a date
            BookingCalendar(
              selectedDate: dateTime,
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  dateTime = selectedDay;
                  dateTime = focusedDay;
                });
              },
            ),
            SizedBox(height: 10.h), // !Spacing
            const Text(
              'Available classes', //! Display text
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
            SizedBox(height: 10.h), // !Spacing
            const ClassImage(), //! Display the class image
            ClassInfoRow(
                dateTime: dateTime), //! Display class info and selected date
            SizedBox(height: 50.h), // !Spacing
            const BottomBookButton(), //! "Book Now" button
          ],
        ),
      ),
    );
  }
}
