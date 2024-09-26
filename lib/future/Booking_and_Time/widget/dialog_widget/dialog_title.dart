// ! Widget for the title and subtitle
import 'package:flutter/material.dart';

class DialogTitle extends StatelessWidget {
  const DialogTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Clocking in!", //! Title text
          style: TextStyle(
            color: Colors.black, //! Text color
            fontSize: 29, //! Font size
          ),
        ),
        Text(
          "GOOD JOB!", // !Subtitle text
          style: TextStyle(
            color: Colors.black, // !Text color
            fontSize: 14, //! Font size
          ),
        ),
      ],
    );
  }
}
