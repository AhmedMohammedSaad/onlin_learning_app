import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onlin_learning_app/future/Booking_and_Time/model/constant.dart';

import 'core/routes/rowts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return MaterialApp(
            theme: ThemeData(
                appBarTheme: const AppBarTheme(
                  backgroundColor: ColorApp.backgroundColor,
                ),
                scaffoldBackgroundColor: ColorApp.backgroundColor),
            debugShowCheckedModeBanner: false,
            //! I used this route to navigate between screens because it’s better
            initialRoute: '/LoginPage',
            onGenerateRoute: RouteGenerator.generateRoute,
          );
        });
  }
}
