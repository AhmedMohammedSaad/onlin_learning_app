// ignore_for_file: unused_element, use_build_context_synchronously, avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:onlin_learning_app/future/Different_versions_of_Login_Screens/models/constant.dart';

// ignore: use_key_in_widget_constructors
class PhoneVerificationPage extends StatefulWidget {
  @override
  State<PhoneVerificationPage> createState() => _PhoneVerificationPageState();
}

List<TextEditingController> controllers =
    List.generate(6, (index) => TextEditingController());

class _PhoneVerificationPageState extends State<PhoneVerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE4F1F8),
      appBar: AppBar(
          backgroundColor: const Color(0xffE4F1F8),
          centerTitle: true,
          title: const Text('Verify Phone'),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.close))),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Code is sent to 283 835 2999 ',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(6, (index) {
                  return SizedBox(
                    width: 45.w,
                    height: 68.h,
                    child: TextFormField(
                      controller:
                          controllers[index], // ربط كل حقل بـ controller خاص به
                      onChanged: (value) {
                        if (value.length == 1 && index < 5) {
                          FocusScope.of(context)
                              .nextFocus(); // الانتقال للحقل التالي إذا تم إدخال حرف
                        } else if (value.isEmpty && index > 0) {
                          FocusScope.of(context)
                              .previousFocus(); // العودة للحقل السابق إذا تم مسح الحرف
                        }
                      },
                      textAlign: TextAlign.center,
                      style:
                          Theme.of(context).textTheme.headlineLarge?.copyWith(
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
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 12.0),
                      ),
                    ),
                  );
                }),
              ), // Add field
              const SizedBox(height: 20.0),
              const Text(
                'Didn’t recieve code? Request again',
                style: TextStyle(
                    color: Color(0xff767372),
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 40.0),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(
                    const Color(0xff3787FF),
                  ),
                ),
                onPressed: () {
                  _sendCode();
                },
                child: const Text(
                  'Verify and Create Account',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //! Send Email for Reset Password
  //! Send Code for Phone Verification
  _sendCode() async {
    var resetCode = controllers.map((controller) => controller.text).join();

    var responseBody = json.encode({"resetCode": resetCode});
    var url = Uri.parse('${paseUrl}auth/verifyResetCode');
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
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Success'),
        ),
      );

      // تنظيف الحقول بعد النجاح
      for (var controller in controllers) {
        controller.clear();
      }
      Navigator.pushNamed(context, '/AddNewPassword');
    } else {
      var responseDecode = json.decode(response.body);
      var errorMessage = responseDecode["message"];
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(errorMessage.toString()),
      ));
      print(errorMessage);
      print(response.statusCode);
    }
  }
}
