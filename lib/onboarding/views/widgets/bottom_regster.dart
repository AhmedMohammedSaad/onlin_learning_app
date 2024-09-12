// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: camel_case_types
class Bottom_Regster extends StatelessWidget {
  const Bottom_Regster({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 335,
      height: 60,
      decoration: BoxDecoration(
          color: const Color(0xff3787FF),
          borderRadius: BorderRadius.circular(50)),
      child: const Text(
        "Register",
        style: TextStyle(
            fontSize: 17.5, color: Colors.white, fontWeight: FontWeight.w500),
      ),
    );
  }
}
