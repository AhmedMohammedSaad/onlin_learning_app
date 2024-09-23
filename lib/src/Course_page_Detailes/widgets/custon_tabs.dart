// // Widget for TabBar and TabBarView
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../../Booking_and_Time/model/constant.dart';
// // Widget for TabBar 'Overview' content

// import '../../Different_versions_of_Login_Screens/widgets/widget_login/boton_signub.dart';
// import '../components/card_feedback.dart';
// import 'container_projects.dart';
// import 'list_feedback.dart';
// import 'progct_by_student_and_add.dart';

// class CustomTabs extends StatelessWidget {
//   const CustomTabs({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         TabBar(
//           indicatorSize: TabBarIndicatorSize.tab,
//           labelColor: const Color.fromARGB(255, 0, 0, 0),
//           indicatorColor: ColorApp.blue,
//           tabs: [
//             Text(
//               'Overview',
//               style: TextStyle(
//                 fontSize: 20.sp,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//             Text(
//               'Lessons',
//               style: TextStyle(
//                 color: const Color(0xff767372),
//                 fontSize: 20.sp,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//           ],
//         ),
//         SizedBox(height: 50.h),
//         Expanded(
//           child: TabBarView(
//             children: [
//               SingleChildScrollView(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Introduction',
//                       style: TextStyle(
//                         fontSize: 20.sp,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                     SizedBox(height: 20.h),
//                     const Text(
//                       'Ipsum quam imperdiet mollis massa bibendum odio vitae in vehicula augue ullamcorper eget a ultrices amet amet, arcu at sem et egestassaf a  facilisi a, diam integer velit, sed gravida sed eu',
//                     ),
//                     SizedBox(height: 50.h),
//                     BottomSignin(name: 'See more', onTap: () {}),
//                     SizedBox(height: 30.h),
//                     const Text(
//                       'Feedback',
//                       style: TextStyle(fontWeight: FontWeight.w500),
//                     ),
//                     SizedBox(height: 35.h),
//                     const Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         CardFeedback(
//                           text: 'Reviews',
//                           feedback: '4.7',
//                           icon: Icon(
//                             Icons.star_rounded,
//                             color: Colors.amber,
//                           ),
//                         ),
//                         CardFeedback(
//                             text: 'Students',
//                             feedback: '753',
//                             icon: Icon(Icons.person_outline)),
//                       ],
//                     ),
//                     SizedBox(height: 20.h),
//                     const ListFeedback(),
//                     SizedBox(height: 20.h),
//                     BottomSignin(name: 'Load more', onTap: () {}),
//                     SizedBox(height: 27.h),
//                     const ProjectByStudentAndAddproject(),
//                     SizedBox(height: 27.h),
//                     const Projects(),
//                     SizedBox(height: 27.h),
//                     BottomSignin(name: 'Load more', onTap: () {}),
//                   ],
//                 ),
//               ),
//               const Text('Lessons will be here'),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
