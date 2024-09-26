import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Booking_and_Time/model/constant.dart';
import '../models/coments_model.dart';

class CommentsTitle extends StatelessWidget {
  const CommentsTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          CommentModel.listComments.length.toString(),
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
        ),
        SizedBox(width: 4.w),
        Text(
          'Comments',
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w800),
        ),
        const Spacer(),

        // "Add Comment" Button
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(
              const Color(0xff767372),
            ),
          ),
          onPressed: () {},
          child: const Text(
            'Add comment',
            style: TextStyle(
              color: ColorApp.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
