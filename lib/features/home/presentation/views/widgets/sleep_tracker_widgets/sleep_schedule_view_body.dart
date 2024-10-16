import 'package:fitness_app/features/home/presentation/views/widgets/sleep_tracker_widgets/alarm_container.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/sleep_tracker_widgets/bed_time_container.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/sleep_tracker_widgets/sleep_duration_container.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/sleep_tracker_widgets/sleep_schedule_container.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/sleep_tracker_widgets/your_schedule_listview.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';
import '../home_widgets/custom_app_bar.dart';

class SleepScheduleViewBody extends StatelessWidget {
  const SleepScheduleViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30,),
          CustomAppBar(title: 'Sleep Schedule',backButton: true,),
          SleepScheduleContainer(),
      
          Text(
            'Your Schedule',
            style: Styles.textStyleLargeTextSemiBold,
          ),
          YouScheduleListView(),
      
          BedTimeContainer(),
          AlarmContainer(),
      
          SleepDurationContainer(),

          SizedBox(height: 60,),
      
        ],
      ),
    );
  }
}


