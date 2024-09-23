import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Projects extends StatelessWidget {
  const Projects({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 319.h,
      child: GridView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              //! image Nemtwork
              image: const DecorationImage(
                image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPoQDsBzHLnxfvBL9EHHDZaQ9n8TdymQ2sWA&s',
                ),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(7),
              color: Colors.blue,
            ),
          );
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 15.w, mainAxisSpacing: 15.h),
      ),
    );
  }
}
