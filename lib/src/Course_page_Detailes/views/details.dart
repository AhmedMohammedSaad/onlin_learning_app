import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onlin_learning_app/src/Booking_and_Time/components/appbar_mthode.dart';
import '../../Booking_and_Time/model/constant.dart';
import '../widgets/course_description.dart';
import '../widgets/course_info.dart';
import '../widgets/section_main.dart';
import '../widgets/title_section.dart';
import '../widgets/videw_card.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: appbar('Details', const Icon(Icons.bookmark_border_rounded)),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const VideoCard(),
                SizedBox(height: 15.h),
                const TitleSection(),
                SizedBox(height: 18.h),
                const CourseInfo(),
                SizedBox(height: 35.h),
                const CourseDescription(),
                SizedBox(height: 50.h),
                TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerHeight: 0,
                  labelColor: const Color.fromARGB(255, 0, 0, 0),
                  indicatorColor: ColorApp.blue,
                  tabs: [
                    Text(
                      'Overview',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Lessons',
                      style: TextStyle(
                        color: const Color(0xff767372),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50.h),
                SizedBox(
                  height: MediaQuery.of(context)
                      .size
                      .height, // Adjust height dynamically
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: const TabBarView(
                      children: [
                        SingleChildScrollView(
                          child: SectionMain(),
                        ),
// Placeholder for lessons section
                        Text('wait'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
