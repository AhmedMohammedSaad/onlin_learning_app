//! Widget for the "Today" section with the label and "See All" button
import 'package:flutter/material.dart';

import '../../components/botton_see_all.dart';

class TodaySection extends StatelessWidget {
  const TodaySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Today",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
        //! see all botton
        bottonSeeAll(),
      ],
    );
  }
}
