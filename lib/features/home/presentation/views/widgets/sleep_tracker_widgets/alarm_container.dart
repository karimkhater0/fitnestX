import 'package:fitness_app/features/home/presentation/views/widgets/sleep_tracker_widgets/today_schedule_container.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/assets.dart';

class AlarmContainer extends StatelessWidget {
  const AlarmContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const TodayScheduleContainer(
      title: 'Alarm',
      time: '05:10am',
      svg: AssetsData.alarm,
      hour: '14',
      minute: '30',
    );
  }
}
