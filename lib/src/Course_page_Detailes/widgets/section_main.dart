import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onlin_learning_app/future/Course_page_Detailes/components/card_feedback.dart';
import 'package:onlin_learning_app/future/Course_page_Detailes/widgets/comment_title.dart';
import 'package:onlin_learning_app/future/Course_page_Detailes/widgets/comment_widget.dart';
import 'package:onlin_learning_app/future/Course_page_Detailes/widgets/container_projects.dart';
import 'package:onlin_learning_app/future/Course_page_Detailes/widgets/list_feedback.dart';
import 'package:onlin_learning_app/future/Course_page_Detailes/widgets/progct_by_student_and_add.dart';
import 'package:onlin_learning_app/future/Different_versions_of_Login_Screens/widgets/widget_login/boton_signub.dart';

class SectionMain extends StatelessWidget {
  const SectionMain({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title: Introduction Section
        Text(
          'Introduction',
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 20.h),

        // Introduction Text
        const Text(
          'Ipsum quam imperdiet mollis massa bibendum odio vitae in vehicula augue ullamcorper eget a ultrices amet amet, arcu at sem et egestassaf a facilisi a, diam integer velit, sed gravida sed eu',
        ),
        SizedBox(height: 50.h),

        // Additional Introduction Text
        const Text(
          'Tllamcorper eget a ultrices amet amet, arcu at sem et egestassaf a facilisi a, diam integer velit, sed gravida sed eu',
        ),
        SizedBox(height: 50.h),

        // "See more" Button
        BottomSignin(
          name: 'See more',
          onTap: () {},
        ),
        SizedBox(height: 30.h),

        // Title: Feedback Section
        const Text(
          'Feedback',
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 35.h),

        // Reviews and Students Feedback
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CardFeedback(
              text: 'Reviews',
              feedback: '4.7',
              icon: Icon(
                Icons.star_rounded,
                color: Colors.amber,
              ),
            ),
            CardFeedback(
              text: 'Students',
              feedback: '753',
              icon: Icon(Icons.person_outline),
            ),
          ],
        ),
        SizedBox(height: 20.h),

        // List of Feedbacks
        const ListFeedback(),
        SizedBox(height: 20.h),

        // "Load More" Button for Feedback
        BottomSignin(
          name: 'Load more',
          onTap: () {},
        ),
        SizedBox(height: 20.h),

        // Projects by Student and Add Project Section
        const ProjectByStudentAndAddproject(),
        SizedBox(height: 27.h),

        // Container for Project Display
        const Projects(),
        SizedBox(height: 27.h),

        // "Load More" Button for Projects
        BottomSignin(
          name: 'Load more',
          onTap: () {},
        ),
        SizedBox(height: 27.h),

        // Comments Section Title
        const CommentsTitle(),
        SizedBox(height: 27.h),

        // Comments List View
        const CommentsWidget(),
        SizedBox(height: 30.h),
      ],
    );
  }
}
