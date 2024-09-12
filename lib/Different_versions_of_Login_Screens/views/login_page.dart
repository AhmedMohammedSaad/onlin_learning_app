import 'package:flutter/material.dart';
import 'package:onlin_learning_app/Different_versions_of_Login_Screens/widgets/widget_login/boton_signub.dart';
import 'package:onlin_learning_app/Different_versions_of_Login_Screens/widgets/widget_login/password_field.dart';
import '../widgets/widget_login/forgot_password.dart';
import '../widgets/widget_login/have_an_account_signup_text.dart';
import '../widgets/widget_login/sigin_google.dart';
import '../widgets/widget_login/icon_look_login.dart';
import '../widgets/widget_login/text.dart';
import '../widgets/widget_login/text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffE4F1F8),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  //! The look is in Container
                  const TheLook_in_Login(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  //! Text welcome back
                  const TextWelcome(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  //! Text subtitle welcome back
                  const TextSubtitle(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  //! TextField for email
                  const ResponsiveTextField(
                    obscureText: false,
                    lrefixIcons: Icon(Icons.email_outlined),
                    labelText: 'Email',
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  //! TextField for password
                  const PasswordField(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  //! Text ForgotPassword
                  const ForgotPassword(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  //! Button Sign in
                  const BottomSignin(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  //! OR
                  const Text("(or)", style: TextStyle(fontSize: 16)),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  //! Sign in with Google
                  const SignIn_with_Google(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  //! Text Have an account Signup
                  const Have_an_account_Signup_text(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
