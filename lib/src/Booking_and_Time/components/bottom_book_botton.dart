// A custom widget for the "Book Now" button.
// It reuses the BottomSignin widget that takes a 'name' parameter to display the text on the button.
import 'package:flutter/material.dart';

import '../../Different_versions_of_Login_Screens/widgets/widget_login/boton_signub.dart';

class BottomBookButton extends StatelessWidget {
  const BottomBookButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomSignin(
      onTap: () {},
      name: 'Book Now',
    );
  }
}
