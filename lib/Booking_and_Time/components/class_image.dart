// A widget that renders an image asset.
// This widget centers the image and ensures it maintains a fixed width and height.
// The image is assumed to be available in the 'assets/images/Rectangle.png' path.
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClassImage extends StatelessWidget {
  const ClassImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/images/Rectangle.png',
        width: 320.w,
        height: 158.h,
      ),
    );
  }
}
