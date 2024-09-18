//! Widget to display the title and three-dot icon
import 'package:flutter/material.dart';

class TimeHeader extends StatelessWidget {
  const TimeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Time",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        ),
        Icon(Icons.more_horiz_outlined),
      ],
    );
  }
}
