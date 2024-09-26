import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../model/constant.dart';
import '../model/model.dart';

Card cardTimerList(int index) {
  return Card(
    color: ColorApp.blue,
    margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 2).w,
    child: ListTile(
      leading: const CircleAvatar(
        backgroundColor: Colors.blue,
        backgroundImage: NetworkImage(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQe5wVYfA-ZZ-NFYZUmQOto9NGEmrP2e-tlHA&s',
        ),
      ),
      title: Text(
        timerList[index].title,
        style: const TextStyle(color: ColorApp.white),
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.h),
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
            child: Text(
              timerList[index].bottonsubTitle1,
              style: const TextStyle(
                color: ColorApp.white,
                fontSize: 10,
              ),
            ),
          ),
          SizedBox(width: 3.w),
          Container(
            padding: const EdgeInsets.all(3).h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.h),
              color: const Color.fromARGB(255, 124, 124, 124),
            ),
            child: Text(
              timerList[index].bottonsubTitle2,
              style: const TextStyle(
                color: ColorApp.white,
                fontSize: 10,
              ),
            ),
          ),
        ],
      ),
      trailing: const Column(
        children: [
          Text(
            "00.213.06",
            style: TextStyle(color: ColorApp.white),
          ),
          Icon(Icons.play_arrow_rounded, color: ColorApp.white),
        ],
      ),
    ),
  );
}
