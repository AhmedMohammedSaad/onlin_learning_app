// Widget to display the countdown timer and the status "Running Class"
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TimeDisplay extends StatelessWidget {
  const TimeDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320.w,
      height: 108.h,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "01:15:02",
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500),
              ),
              Icon(Icons.arrow_forward_ios_rounded),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Icon(Icons.play_arrow_rounded),
              Text(
                "Running Class",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
