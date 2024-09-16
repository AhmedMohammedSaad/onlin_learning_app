//! Widget for the learned today and total hours info
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DialogLearnedInfo extends StatelessWidget {
  const DialogLearnedInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text('Learned today'), // !Label for learned today
            SizedBox(width: 50.w), //! Spacing between columns
            const Text('totally hours'), //! Label for total hours
          ],
        ),
        SizedBox(height: 5.h), //! Vertical space between elements
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RichText(
              text: const TextSpan(
                text: '46 ', //! Time learned today
                style: TextStyle(
                  color: Color(0xff3787FF), //! Blue color for numbers
                  fontSize: 14,
                ),
                children: [
                  TextSpan(
                    text: 'min', //! Label for minutes
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(
                          255, 0, 0, 0), // ! Black color for label
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
                width: 98.w), //! Space between learned today and total hours
            RichText(
              text: const TextSpan(
                text: '468 ', //! Total hours spent
                style: TextStyle(
                  color: Color(0xff3787FF), //! Blue color for numbers
                  fontSize: 14,
                ),
                children: [
                  TextSpan(
                    text: 'hrs', //! Label for hours
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(
                          255, 0, 0, 0), //! Black color for label
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
