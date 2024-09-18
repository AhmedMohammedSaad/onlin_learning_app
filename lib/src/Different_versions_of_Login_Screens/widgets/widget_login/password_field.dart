import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onlin_learning_app/src/Different_versions_of_Login_Screens/widgets/widget_login/text_field.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool isVisibility = true;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: ResponsiveTextField(
            obscureText: isVisibility,
            lrefixIcons: IconButton(
              onPressed: () {
                setState(() {
                  //! Toggle visibility of the password
                  isVisibility = !isVisibility;
                });
              },
              icon: isVisibility
                  ? const Icon(Icons.visibility_off_outlined)
                  : const Icon(
                      Icons.visibility_outlined,
                    ),
            ),
            labelText: 'Password',
          ),
        ),
        Container(
          width: 66,
          height: 52,
          margin: EdgeInsets.only(
            right: screenWidth / 40,
            left: screenWidth / 30,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
          child: SvgPicture.asset(
            'assets/images/fingerprint.svg',
            width: 25,
            height: 28,
            fit: BoxFit.none,
          ),
        ),
      ],
    );
  }
}
