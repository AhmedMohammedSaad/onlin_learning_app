import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../model/constant.dart';
import '../dialog_widget/dialog_good_job.dart';

class StackDialogGoodJob extends StatelessWidget {
  const StackDialogGoodJob({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const DialogGoodJob(),
        Positioned(
          bottom: 15.h,
          right: 50.w,
          left: 50.w,
          child: Center(
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context); //! Close the dialog when tapped
              },
              child: Container(
                alignment: Alignment.center, // !Centering the close button
                width: 40, //! Size of the close button
                height: 40, //! Size of the close button
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), //! Rounded button
                  color:
                      ColorApp.white, //! White background for the close button
                ),
                child: const Icon(Icons.close), // Close icon
              ),
            ),
          ),
        ),
      ],
    );
  }
}
