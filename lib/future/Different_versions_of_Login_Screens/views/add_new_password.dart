// ignore_for_file: use_build_context_synchronously, avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:onlin_learning_app/future/Different_versions_of_Login_Screens/models/constant.dart';
import 'package:onlin_learning_app/future/Different_versions_of_Login_Screens/widgets/widget_login/boton_signub.dart';
import 'package:onlin_learning_app/future/Different_versions_of_Login_Screens/widgets/widget_login/text_field.dart';

class AddNewPassword extends StatefulWidget {
  const AddNewPassword({super.key});

  @override
  State<AddNewPassword> createState() => _AddNewPasswordState();
}

class _AddNewPasswordState extends State<AddNewPassword> {
  final GlobalKey<FormState> gkey = GlobalKey<FormState>();
  final TextEditingController gmailControl = TextEditingController();
  final TextEditingController passControl = TextEditingController();
  bool isVisibility2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: gkey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ResponsiveTextField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Enter your Name';
              }
              return null;
            },
            controller: gmailControl,
            obscureText: false,
            lrefixIcons: const Icon(Icons.email_outlined),
            labelText: 'Name',
          ),

          SizedBox(height: MediaQuery.of(context).size.height * 0.02),

          ResponsiveTextField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Enter your ForgetPassword';
              }
              return null;
            },
            controller: passControl,
            obscureText: isVisibility2,
            lrefixIcons: IconButton(
              onPressed: () {
                setState(() {
                  //! Toggle visibility of the password
                  isVisibility2 = !isVisibility2;
                });
              },
              icon: isVisibility2
                  ? const Icon(Icons.visibility_off_outlined)
                  : const Icon(
                      Icons.visibility_outlined,
                    ),
            ),
            labelText: 'ForgetPassword',
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          //! Button Sign in
          BottomSignin(
            onTap: () {
              if (gkey.currentState!.validate()) {
                _addNewPassword();
              }
            },
            name: "Sign in",
          ),
        ],
      ),
    ));
  } //! Send Code for Phone Verification

  // ignore: unused_element
  _addNewPassword() async {
    var responseBody = json.encode({
      "email": gmailControl.text,
      "newPassword": passControl.text,
    });
    var url = Uri.parse('${paseUrl}auth/resetPassword');
    http.Response response = await http.put(
      url,
      headers: {"Content-Type": "application/json"},
      body: responseBody,
    );

    if (response.statusCode == 200) {
      var responseDecode = json.decode(response.body);
      var status = responseDecode["message"];
      print(status);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Success'),
        ),
      );

      gmailControl.clear();
      passControl.clear();
      Navigator.pushNamed(context, '/LoginPage');
    } else {
      var responseDecode = json.decode(response.body);
      var errorMessage = responseDecode["message"];
      print(response.statusCode);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(errorMessage.toString()),
      ));
    }
  }
}
