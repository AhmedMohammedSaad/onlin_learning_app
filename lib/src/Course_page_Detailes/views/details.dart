import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onlin_learning_app/src/Booking_and_Time/model/constant.dart';

import '../../Booking_and_Time/components/appbar_mthode.dart';
import '../../Different_versions_of_Login_Screens/widgets/widget_login/boton_signub.dart';

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
        appBar: appbar('Details', const Icon(Icons.save_alt)),
        body: ListView(
          children: [
            Stack(
              children: [
                //! video card
                SizedBox(
                  height: 200.h,
                  width: 375.w,
                  child: const Image(
                    image: AssetImage('assets/images/video.png'),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 8,
                  right: MediaQuery.of(context).size.width / 2,
                  child: const Image(
                    image: AssetImage('assets/images/Play.png'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 20.w,
                  ),
                  alignment: Alignment.center,
                  height: 24.h,
                  width: 55.w,
                  color: ColorApp.blue,
                  child: const Text(
                    'HOT',
                    style: TextStyle(color: ColorApp.white),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                ListTile(
                  leading: const CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAk0_WV-nb1sB6OuvVJ1gdmpxWzxU5GfGjng&s',
                    ),
                  ),
                  title: Text(
                    'Anny Morriarty',
                    style: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 9.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Text(
                    'Comic drawing essential\nfor everyone!',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.watch_later_outlined),
                          Text(
                            ' 1.hour 30 min',
                            style: TextStyle(
                                color: const Color(0xff767372),
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 40.w,
                      ),
                      Row(
                        children: [
                          const Icon(Icons.videocam_outlined),
                          Text(
                            ' 12 Lessons',
                            style: TextStyle(
                                color: const Color(0xff767372),
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.star_border_rounded),
                          Text(
                            ' 4.7  (753)',
                            style: TextStyle(
                                color: const Color(0xff767372),
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 62.w,
                      ),
                      Row(
                        children: [
                          const Icon(Icons.person_outline_sharp),
                          Text(
                            ' 2K  students',
                            style: TextStyle(
                                color: const Color(0xff767372),
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: const Text(
                      'Lectus vitae lorem luctus mostie vitae mbi curabitur magna facilisis turpis nullam nibh gfas ultricies purus molestie quis impert id agger adipiscing molestie auctor arcu ium  atd eget faucibus quis id!'),
                ),
                SizedBox(
                  height: 70.h,
                ),
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
                SizedBox(
                  height: 50.h,
                ),
                SizedBox(
                  height: 2000.h,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                    ),
                    child: TabBarView(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Introduction',
                              style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            const Text(
                              'Ipsum quam imperdiet mollis massa bibendum odio vitae in vehicula augue ullamcorper eget a ultrices amet amet, arcu at sem et egestassaf a  facilisi a, diam integer velit, sed gravida sed eu',
                            ),
                            SizedBox(
                              height: 50.h,
                            ),
                            const Text(
                              'Tllamcorper eget a ultrices amet amet, arcu at sem et egestassaf a  facilisi a, diam integer velit, sed gravida sed eu',
                            ),
                            SizedBox(
                              height: 50.h,
                            ),
                            BottomSignin(
                              name: 'See more',
                              onTap: () {},
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            const Text(
                              'Feedack',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 35.h,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CardFidbak(
                                  text: 'Reviews',
                                  feedack: '4.7',
                                  icon: Icon(
                                    Icons.star_rounded,
                                    color: Colors.amber,
                                  ),
                                ),
                                CardFidbak(
                                    text: 'Students',
                                    feedack: '753',
                                    icon: Icon(Icons.person_outline)),
                              ],
                            ),
                          ],
                        ),
                        const Text('wate'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CardFidbak extends StatelessWidget {
  const CardFidbak({
    super.key,
    required this.text,
    required this.feedack,
    required this.icon,
  });
  final String text;
  final String feedack;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 90,
      decoration: BoxDecoration(
        color: ColorApp.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              Text(feedack),
            ],
            //
          ),
          Text(text),
          //
        ],
      ),
    );
  }
}
