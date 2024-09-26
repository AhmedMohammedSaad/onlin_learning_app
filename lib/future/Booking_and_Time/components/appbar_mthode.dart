import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar appbar(String textTitle, Icon icon) {
  return AppBar(
    automaticallyImplyLeading: true,
    leading: const Icon(Icons.arrow_back),
    centerTitle: true,
    title: Text(
      textTitle,
      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 27.sp),
    ),
    actions: [
      IconButton(onPressed: () {}, icon: icon),
    ],
  );
}
