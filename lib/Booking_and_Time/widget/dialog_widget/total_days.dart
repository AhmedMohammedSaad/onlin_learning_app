//! Widget for the total days information
import 'package:flutter/material.dart';

class TotalDays extends StatelessWidget {
  const TotalDays({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Totally days',
            style: TextStyle(fontSize: 14)), // Label for total days
        const SizedBox(height: 20), //! Vertical space between elements
        RichText(
          text: const TextSpan(
            text: '554 ', //! Total days spent
            style: TextStyle(
              color: Color(0xffE4F1F8), //! Light color for days
              fontSize: 14,
            ),
            children: [
              TextSpan(
                text: 'days', //! Label for days
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 0, 0, 0), //! Black color for label
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
