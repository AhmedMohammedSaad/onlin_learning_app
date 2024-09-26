// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OTPTextFields extends StatelessWidget {
  const OTPTextFields({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(6, (index) {
        return SizedBox(
          width: 45.w,
          height: 68.h,
          child: TextFormField(
            onChanged: (value) {
              if (value.length == 1 && index < 3) {
                FocusScope.of(context).nextFocus();
              } else if (value.isEmpty && index > 0) {
                FocusScope.of(context).previousFocus();
              }
            },
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color.fromARGB(255, 255, 255, 255),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 12.0),
            ),
          ),
        );
      }),
    );
  }
}
