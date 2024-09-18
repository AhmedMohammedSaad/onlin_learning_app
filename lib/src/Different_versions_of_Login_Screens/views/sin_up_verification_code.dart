import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/widget_signin/otp_text_fields.dart';

// ignore: use_key_in_widget_constructors
class VerificationCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen size for responsiveness
    final screenSize = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffE4F1F8),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: screenSize.height * 0.05,
              ),
              Stack(
                children: [
                  Center(
                    child: SvgPicture.asset(
                      'assets/images/Ellipse.svg',
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: screenSize.width * 0.23,
                    child: SvgPicture.asset(
                      'assets/images/logo.svg',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenSize.height * 0.03,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    alignment: Alignment.topCenter,
                    width: double.infinity,
                    height: screenSize.height * 0.8, // Tab height
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(27),
                          topRight: Radius.circular(27)), // Rounded corners
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Login Tab
                        TextButton(
                          onPressed: () {}, // Action for login
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: screenSize.height *
                                  0.02, // Responsive text size
                            ),
                          ),
                        ),
                        // Sign-up Tab
                        TextButton(
                          onPressed: () {}, // Action for sign-up
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenSize.height *
                                  0.02, // Responsive text size
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 60,
                    left: 0,
                    right: 0,
                    child: Container(
                      alignment: Alignment.center,
                      height: screenSize.height / 1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(27),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 40,
                            ),
                            const Text(
                              'Verification Code',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(height: 7.0),
                            const Text(
                              'Enter the 4 digits code that you received\non your e-mail.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xff767372),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(height: 16.0),
                            const OTPTextFields(), // حقول OTP
                            const SizedBox(height: 16.0),

                            ElevatedButton(
                              onPressed:
                                  () {}, // Action when login button is pressed (currently empty)

                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(
                                    double.infinity,
                                    screenSize.height *
                                        0.07), // Button height based on screen size
                                backgroundColor:
                                    Colors.blue, // Button background color
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      30), // Rounded corners
                                ),
                              ),
                              child: const Text(
                                'Log in',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
