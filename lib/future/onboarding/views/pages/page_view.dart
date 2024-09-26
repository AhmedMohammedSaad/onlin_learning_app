import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../models/model.dart';

class OnboardingPage extends StatelessWidget {
  // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  OnboardingPage({required this.model});

  final Model model; // استلام النموذج
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            model.imagePase,
            width: 252,
          ),
          //! عرض الصورة من النموذج
          const SizedBox(height: 20),
          //!Title
          Text(
            model.title,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          //!supTitle
          Text(
            model.supTitle,
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
