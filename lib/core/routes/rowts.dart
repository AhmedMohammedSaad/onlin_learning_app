import 'package:flutter/material.dart';
import 'package:onlin_learning_app/future/Booking_and_Time/view/timer.dart';
import 'package:onlin_learning_app/future/Different_versions_of_Login_Screens/views/add_new_password.dart';
import 'package:onlin_learning_app/future/Different_versions_of_Login_Screens/views/login_page.dart';
import '../../future/Booking_and_Time/view/booking.dart';
import '../../future/Course_page_Detailes/views/details.dart';
import '../../future/Different_versions_of_Login_Screens/views/forget_pass.dart';
import '../../future/Different_versions_of_Login_Screens/views/sign_up_page.dart';
import '../../future/Different_versions_of_Login_Screens/views/signin_page.dart';
import '../../future/Different_versions_of_Login_Screens/views/sin_up_verification_code.dart';
import '../../future/Different_versions_of_Login_Screens/views/verify_phone.dart';
import '../../future/onboarding/views/pages/home_screen.dart';

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
      case '/SigninScreen':
        return MaterialPageRoute(builder: (_) => SigninScreen());
      case '/PhoneVerificationPage':
        return MaterialPageRoute(builder: (_) => PhoneVerificationPage());
      case '/VerificationCode':
        return MaterialPageRoute(builder: (_) => VerificationCode());

      case '/Booking':
        return MaterialPageRoute(builder: (_) => const Booking());
      case '/TimerPage':
        return MaterialPageRoute(builder: (_) => const TimerPage());
      case '/DetailsScreen':
        return MaterialPageRoute(builder: (_) => const DetailsScreen());
      case '/SignUp':
        return MaterialPageRoute(builder: (_) => const SignUp());
      case '/SendEmailResetPass':
        return MaterialPageRoute(builder: (_) => SendEmailResetPass());
      case '/AddNewPassword':
        return MaterialPageRoute(builder: (_) => const AddNewPassword());
      default:
        //!Home Page If the path does not exist, the page is displayed.
        return MaterialPageRoute(builder: (_) => const HomeScreen());
    }
  }
}
