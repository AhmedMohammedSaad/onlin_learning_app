import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/feedack_model.dart';

class ListFeedback extends StatelessWidget {
  const ListFeedback({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 239.h,
      child: ListView.builder(
          itemCount: FeedbackModel.listFeedback.length,
          itemBuilder: (ctx, index) {
            return ListTile(
              title: Row(
                children: [
                  CircleAvatar(
                    backgroundImage:
                        NetworkImage(FeedbackModel.listFeedback[index].image),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        FeedbackModel.listFeedback[index].title1,
                        style: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        FeedbackModel.listFeedback[index].title2,
                        style: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: 50.w, bottom: 10.h),
                child: Text(
                  FeedbackModel.listFeedback[index].subtitle,
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color(0xff767372),
                      fontWeight: FontWeight.w400),
                ),
              ),
            );
          }),
    );
  }
}
