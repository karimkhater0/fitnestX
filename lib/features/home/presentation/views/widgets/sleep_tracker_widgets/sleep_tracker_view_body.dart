import 'package:fitness_app/core/utils/styles.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/home_widgets/custom_app_bar.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/sleep_tracker_widgets/alarm_container.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/sleep_tracker_widgets/bed_time_container.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/sleep_tracker_widgets/sleep_tracker_chart.dart';
import 'package:flutter/material.dart';

import 'daily_sleep_schedule_container.dart';
import 'last_night_sleep_container.dart';

class SleepTrackerViewBody extends StatelessWidget {
  const SleepTrackerViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30,),
          CustomAppBar(title: 'Sleep Tracker',backButton: true,),

          SleepTrackerChart(),
      
          LastNightSleepContainer(),
      
          DailySleepScheduleContainer(),


          ///Today Schedule
          Text(
            'Today Schedule',
            style: Styles.textStyleLargeTextSemiBold,
          ),
          BedTimeContainer(),
          AlarmContainer(),
      
          SizedBox(height: 30,),
        ],
      ),
    );
  }
}




