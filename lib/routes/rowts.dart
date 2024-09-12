import 'package:flutter/material.dart';
import 'package:onlin_learning_app/Different_versions_of_Login_Screens/views/login_page.dart';
import '../Different_versions_of_Login_Screens/views/signin_page.dart';
import '../Different_versions_of_Login_Screens/views/sin_up_verification_code.dart';
import '../Different_versions_of_Login_Screens/views/verify_phone.dart';
import '../onboarding/views/pages/home_screen.dart';

//! the file Route
class RouteGenerator {
  //! the Function Route to switch Screens

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      //! home screen
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/LoginPage':
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case '/SigninPage':
        return MaterialPageRoute(builder: (_) => SigninScreen());
      case '/VerifyPhonePage':
        return MaterialPageRoute(builder: (_) => PhoneVerificationPage());
      case '/VerificationCode':
        return MaterialPageRoute(builder: (_) => VerificationCode());
      default:
        //!Home Page If the path does not exist, the page is displayed.
        return MaterialPageRoute(builder: (_) => const HomeScreen());
    }
  }
}
