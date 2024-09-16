import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../components/shart_button.dart';
import '../timer_widget/list_of_number.dart';
import 'dialog_learn_edinfo.dart';
import 'dialog_title.dart';
import 'total_days.dart';
import 'weekly_record.dart';

class ContainerDialog extends StatelessWidget {
  const ContainerDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.h), //! Outer margin of the dialog's content
      alignment: Alignment.topLeft, //! Aligns content to the top-left
      width: 291.w, //! Width of the dialog
      height: 442.h, //! Height of the dialog
      child: const Column(
        crossAxisAlignment:
            CrossAxisAlignment.start, // Aligns content to the left
        children: [
          DialogTitle(),
          DialogLearnedInfo(),
          //! Spacing between elements
          SizedBox(height: 40),
          TotalDays(),
          //! Spacing between elements
          WeeklyRecord(),
          SizedBox(height: 40),
          // !Spacing before the week circles
          SizedBox(height: 30),
          ListOfNumper(),
          //! Spacing before the Share button
          SizedBox(height: 30),
          //! Widget for the share button
          ShareButton()
        ],
      ),
    );
  }
}
