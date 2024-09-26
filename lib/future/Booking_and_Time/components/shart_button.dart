//! Widget for the share button
import 'package:flutter/material.dart';

import '../../Different_versions_of_Login_Screens/widgets/widget_login/boton_signub.dart';

class ShareButton extends StatelessWidget {
  const ShareButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomSignin(
      name: 'Share', // Share button label
      onTap: () {}, // Action when the button is tapped
    );
  }
}
