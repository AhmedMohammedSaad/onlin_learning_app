// Widget for Course Information
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourseInfo extends StatelessWidget {
  const CourseInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(Icons.watch_later_outlined),
              Text(
                ' 1.hour 30 min',
                style: TextStyle(
                  color: const Color(0xff767372),
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                ),
              ),
              SizedBox(width: 40.w),
              const Icon(Icons.videocam_outlined),
              Text(
                ' 12 Lessons',
                style: TextStyle(
                  color: const Color(0xff767372),
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
              const Icon(Icons.star_border_rounded),
              Text(
                ' 4.7  (753)',
                style: TextStyle(
                  color: const Color(0xff767372),
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                ),
              ),
              SizedBox(width: 62.w),
              const Icon(Icons.person_outline_sharp),
              Text(
                ' 2K  students',
                style: TextStyle(
                  color: const Color(0xff767372),
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
