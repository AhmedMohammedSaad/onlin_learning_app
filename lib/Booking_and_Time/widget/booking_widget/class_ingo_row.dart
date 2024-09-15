// A widget that displays the name of the class and the selected date.
// It shows the class name on the left and the date on the right with a calendar icon.
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class ClassInfoRow extends StatelessWidget {
  final DateTime dateTime;

  const ClassInfoRow({
    super.key,
    required this.dateTime,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Figma class',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.sp),
        ),
        Row(
          children: [
            const Icon(
              Icons.date_range_outlined,
            ),
            Text(
              DateFormat('d MMMM y').format(dateTime),
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 10),
            ),
          ],
        ),
      ],
    );
  }
}
