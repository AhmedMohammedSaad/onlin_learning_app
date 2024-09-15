import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onlin_learning_app/Different_versions_of_Login_Screens/widgets/widget_login/boton_signub.dart';
import '../components/appbar_mthode.dart';
import '../widget/timer_widget/time_display.dart';
import '../widget/timer_widget/time_header.dart';
import '../widget/timer_widget/timer_list.dart';
import '../widget/timer_widget/today_section.dart';

// Main page that contains the timer display and other sections
class TimerPage extends StatelessWidget {
  const TimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar('Timer'),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        child: Column(
          children: [
            //! Widget for the header section containing the title and three-dot icon
            const TimeHeader(),

            SizedBox(height: 10.h),

            //! Widget for displaying the countdown timer and the "Running Class" status
            const TimeDisplay(),

            SizedBox(height: 10.h),

            //! Widget for displaying the "Today" label and the "See All" button
            const TodaySection(),

            //! Widget that shows the Timer List using a ListView
            const Expanded(child: TimerList()),

            SizedBox(height: 10.h),

            //! Widget for the "Stop" button at the bottom
            const BottomSignin(name: 'Stop'),
          ],
        ),
      ),
    );
  }
}
