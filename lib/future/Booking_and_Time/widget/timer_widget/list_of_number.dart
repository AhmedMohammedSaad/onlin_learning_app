import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListOfNumper extends StatelessWidget {
  const ListOfNumper({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, // Centering the week circles
      children: List.generate(7, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2)
              .w, // Spacing between circles
          child: CircleAvatar(
            radius: 15, // Circle size
            backgroundColor:
                Colors.grey[300], // Light grey color for the circle background
            child: Text(
              "${index + 1}", // Day of the week number
              style: const TextStyle(
                color: Colors.blue, // Blue text color
              ),
            ),
          ),
        );
      }),
    );
  }
}
