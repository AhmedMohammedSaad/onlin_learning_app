// ignore_for_file: camel_case_types

import 'package:flutter/widgets.dart';

class Bottom_Login extends StatelessWidget {
  const Bottom_Login({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 335,
      height: 60,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: const Color(0xff3787FF),
          )),
      child: const Text(
        "Log in",
        style: TextStyle(
            fontSize: 17.5,
            color: Color(0xff3787FF),
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
