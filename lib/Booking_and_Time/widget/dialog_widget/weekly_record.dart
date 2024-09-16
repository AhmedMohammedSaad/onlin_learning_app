// Widget for the weekly record section
import 'package:flutter/material.dart';

class WeeklyRecord extends StatelessWidget {
  const WeeklyRecord({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Record of this week', // Record label
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500, // Semi-bold text
          ),
        ),
      ],
    );
  }
}
