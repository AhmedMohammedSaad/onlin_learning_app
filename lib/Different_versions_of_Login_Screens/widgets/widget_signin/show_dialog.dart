import 'package:flutter/material.dart';
import 'package:onlin_learning_app/Different_versions_of_Login_Screens/widgets/widget_signin/dialog.dart';

Future<dynamic> showdialog(BuildContext context, Size screenSize) {
  String accountName = 'Ahmed Mohamed Saad';
  String email = 'email@gmail.com';
  String appName = 'TikTak';
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50), // Rounded corners for dialog
        ),
        alignment: Alignment.center,
        child: AccountSelectionWidget(
          screenSize: screenSize,
          accountName: accountName, // Example account name
          email: email, // Example email
          appName: appName, // Example application name
        ),
      );
    },
  );
}
