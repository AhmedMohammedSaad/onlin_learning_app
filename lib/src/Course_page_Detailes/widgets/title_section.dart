// Widget for the section with HOT label and title
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Booking_and_Time/model/constant.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          alignment: Alignment.center,
          height: 24.h,
          width: 55.w,
          color: ColorApp.blue,
          child: const Text(
            'HOT',
            style: TextStyle(color: ColorApp.white),
          ),
        ),
        SizedBox(height: 15.h),
        ListTile(
          leading: const CircleAvatar(
            radius: 35,
            backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAk0_WV-nb1sB6OuvVJ1gdmpxWzxU5GfGjng&s',
            ),
          ),
          title: Text(
            'Anny Morriarty',
            style: TextStyle(
              fontSize: 17.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(height: 9.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Text(
            'Comic drawing essential\nfor everyone!',
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
