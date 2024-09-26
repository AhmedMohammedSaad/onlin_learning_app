//! Widget for displaying the Timer list
import 'package:flutter/material.dart';
import '../../components/card_timer.dart';
import '../../model/model.dart';

class TimerList extends StatelessWidget {
  const TimerList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: timerList.length,
      itemBuilder: (context, index) {
        //! card Timer lsit
        return cardTimerList(index);
      },
    );
  }
}
