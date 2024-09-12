// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Bottom_Skip extends StatelessWidget {
  const Bottom_Skip({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          alignment: Alignment.center,
          width: screenWidth * 0.2,
          height: screenHeight * 0.05,
          decoration: const BoxDecoration(color: Colors.white),
          child: const Text(
            "Skip",
            style: TextStyle(
                fontSize: 17.5,
                color: Color(0xff3787FF),
                fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(width: screenWidth * 0.05),
      ],
    );
  }
}
