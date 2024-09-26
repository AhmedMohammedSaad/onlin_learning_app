import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Booking_and_Time/model/constant.dart';
import '../models/coments_model.dart';

class CommentsWidget extends StatelessWidget {
  const CommentsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.h,
      child: ListView.builder(
          itemCount: CommentModel.listComments.length,
          itemBuilder: (ctx, index) {
            return ListTile(
              title: Row(
                children: [
                  CircleAvatar(
                    backgroundImage:
                        NetworkImage(CommentModel.listComments[index].image),
                  ),
                  SizedBox(width: 10.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        CommentModel.listComments[index].title1,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            CommentModel.listComments[index].date,
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: const Color(0xff767372),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            CommentModel.listComments[index].degree,
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: const Color(0xff767372),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: 50.w, bottom: 10.h),
                child: Column(
                  children: [
                    Text(
                      CommentModel.listComments[index].subtitle,
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: const Color(0xff767372),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 18.h),
                    Row(
                      children: [
                        Text(
                          'Liked',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: ColorApp.blue,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 20.w),
                        Text(
                          'Reply',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: const Color(0xff767372),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.thumb_up_off_alt,
                          color: ColorApp.blue,
                        ),
                        SizedBox(width: 5.w),
                        const Text(
                          '10',
                          style: TextStyle(color: ColorApp.blue),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
