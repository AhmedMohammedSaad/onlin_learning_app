import 'package:flutter/material.dart';

import '../../Booking_and_Time/model/constant.dart';

class CardFeedback extends StatelessWidget {
  const CardFeedback({
    super.key,
    required this.text,
    required this.feedback,
    required this.icon,
  });
  final String text;
  final String feedback;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 90,
      decoration: BoxDecoration(
        color: ColorApp.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              Text(feedback),
            ],
            //
          ),
          Text(text),
        ],
      ),
    );
  }
}
