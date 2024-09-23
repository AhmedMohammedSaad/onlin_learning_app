// Widget for Video Card (Image with Play Button)
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VideoCard extends StatelessWidget {
  const VideoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 200.h,
          width: 375.w,
          child: const Image(
            image: AssetImage('assets/images/video.png'),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 8,
          right: MediaQuery.of(context).size.width / 2,
          child: const Image(
            image: AssetImage('assets/images/Play.png'),
          ),
        ),
      ],
    );
  }
}
