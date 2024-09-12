// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:onlin_learning_app/onboarding/views/pages/page_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../models/model.dart';
import '../widgets/bottom_login.dart';
import '../widgets/bottom_regster.dart';
import '../widgets/bottom_skip.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    //! الحصول على حجم الشاشة باستخدام MediaQuery
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffE4F1F8),
        body: Stack(
          children: [
            Column(
              children: [
                //!pageView.builder لتتنقل بين الصفحات
                Expanded(
                  child: PageView.builder(
                    controller: pageController,
                    itemCount: category.length,
                    itemBuilder: (context, index) {
                      return OnboardingPage(
                        //! تمرير النموذج لكل صفحة
                        model: category[index],
                      );
                    },
                  ),
                ),
                // ! الثلاث نقاط
                SmoothPageIndicator(
                  controller: pageController,
                  count: category.length,
                  effect: WormEffect(
                    dotHeight: screenHeight * 0.015,
                    dotWidth: screenWidth * 0.02,
                    activeDotColor: Colors.blue,
                  ),
                ),
                // ! 2Bottom for one Regster , tow login
                SizedBox(height: screenHeight * 0.02),
                const Bottom_Regster(),
                SizedBox(height: screenHeight * 0.02),
                const Bottom_Login(),
                SizedBox(height: screenHeight * 0.05),
              ],
            ),
            //! Bottom Skip
            Positioned(
              top: screenHeight * 0.02,
              right: screenWidth * 0.02,
              child: Bottom_Skip(
                  screenWidth: screenWidth, screenHeight: screenHeight),
            ),
          ],
        ),
      ),
    );
  }
}
