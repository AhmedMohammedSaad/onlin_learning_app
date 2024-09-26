// ignore_for_file: library_private_types_in_public_api, non_constant_identifier_names, unused_element, use_build_context_synchronously, avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import '../models/constant.dart';
import '../widgets/widget_login/boton_signub.dart';
import '../widgets/widget_login/text_field.dart';

// ignore: use_key_in_widget_constructors
class SendEmailResetPass extends StatefulWidget {
  @override
  State<SendEmailResetPass> createState() => _SendEmailResetPassState();
}

class _SendEmailResetPassState extends State<SendEmailResetPass> {
  final GlobalKey<FormState> gkey = GlobalKey<FormState>();

  final TextEditingController gControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Send Email for Forget Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: gkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ResponsiveTextField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter your Email';
                  }
                  return null;
                },
                controller: gControl,
                obscureText: false,
                lrefixIcons: const Icon(Icons.email_outlined),
                labelText: 'Email',
              ),
              SizedBox(height: 20.h),
              BottomSignin(
                onTap: () {
                  if (gkey.currentState!.validate()) {
                    _SendEmail();
                  }
                },
                name: 'Send Email',
              ),
            ],
          ),
        ),
      ),
    );
  }

  //! Send Email for Reset Password
  _SendEmail() async {
    var responseBody = json.encode({"email": gControl.text});
    var url = Uri.parse('${paseUrl}auth/forgotPassword');
    http.Response response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: responseBody,
    );

    if (response.statusCode == 200) {
      var responseDecode = json.decode(response.body);
      var status = responseDecode["message"];
      print(status);
      print(responseDecode["status"]);
      const ScaffoldMessenger(
        child: SnackBar(
          content: Text('Success'),
        ),
      );

      gControl.clear();
      Navigator.pushNamed(context, '/PhoneVerificationPage');
    } else {
      var responseDecode = json.decode(response.body);
      // var errorMessage = responseDecode["errors"][0]["msg"];
      var errorMessage = responseDecode["message"];
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(errorMessage.toString()),
      ));
      print(errorMessage);
      print(response.statusCode);
    }
  }
}
