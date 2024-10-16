import 'package:flutter/material.dart';

import 'clock_scroll_wheel_am_pm.dart';
import 'clock_scroll_wheel_hours.dart';
import 'clock_scroll_wheel_minutes.dart';

class ClockAddScheduleWidget extends StatelessWidget {
  const ClockAddScheduleWidget({super.key});


  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 90,
      width: MediaQuery.sizeOf(context).width,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClockScrollWheelHours(),
          ClockScrollWheelMinutes(),
          ClockScrollWheelAmPm(),
        ],
      ),
    );
  }
}
