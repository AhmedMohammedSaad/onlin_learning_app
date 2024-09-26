import 'package:flutter/material.dart';
import 'package:onlin_learning_app/future/Different_versions_of_Login_Screens/widgets/widget_signin/email_and_user_address_input_field.dart';
import '../widgets/widget_signin/login_and_password_button.dart';
import '../widgets/widget_signin/login_google_and_facebook_botton.dart';

// ignore: use_key_in_widget_constructors
class SigninScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//! Get the screen size using MediaQuery
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:
//! Set background color to match the design
          const Color(0xFFE4F1F8),
      body: Padding(
        padding: EdgeInsets.symmetric(
//! Dynamic horizontal padding based on screen width
            horizontal: screenSize.width * 0.05),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Center elements vertically
              children: [
//! Welcome back text
                Text(
                  'Welcome back!\nSign in to continue!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: screenSize.width *
                        0.07, // Dynamic font size based on screen width
                    fontWeight: FontWeight.bold, // Make text bold
                    color: Colors.black, // Text color
                  ),
                ),

                SizedBox(
                    height: screenSize.height *
                        0.04), // Vertical space between elements
                //! Google login button
//! Google login button with Row
                GoogleLoginButton(screenSize: screenSize),

                SizedBox(
                  height: screenSize.height * 0.02, // Space between buttons
                ),

//! Facebook login button with Row
                FacebookLoginBotton(screenSize: screenSize),

                SizedBox(
                    height: screenSize.height *
                        0.03), // Space between button and text
//! Divider text "or"
                const Text('or'),
                SizedBox(
                    height:
                        screenSize.height * 0.02), // Space before input fields
//! Username input field
                const UsernameInputField(),
                SizedBox(
                    height:
                        screenSize.height * 0.02), // Space between input fields
//! Email address input field
                const EmailAddressInputField(),
                SizedBox(
                    height: screenSize.height *
                        0.02), // Space between input and error message
//! Error message text
                Align(
                  alignment:
                      Alignment.centerLeft, // Align error message to the left
                  child: Text(
                    'Please enter valid password',
                    style: TextStyle(
                      color: Colors.red, // Error message color
                      fontSize: screenSize.width *
                          0.035, // Dynamic font size for error message
                    ),
                  ),
                ),
                SizedBox(
                    height: screenSize.height *
                        0.02), // Space between error and login button
//! Log in button
                LogInButton(screenSize: screenSize),
                SizedBox(
                    height: screenSize.height *
                        0.02), // Space between login button and forgot password
//! Forgot password text button
                ForgotPasswordButton(screenSize: screenSize),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
