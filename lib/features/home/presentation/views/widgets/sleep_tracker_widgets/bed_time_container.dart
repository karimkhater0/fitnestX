import 'package:fitness_app/features/home/presentation/views/widgets/sleep_tracker_widgets/today_schedule_container.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/assets.dart';

class BedTimeContainer extends StatelessWidget {
  const BedTimeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const TodayScheduleContainer(
      title: 'Bedtime',
      time: '09:00pm',
      svg: AssetsData.bedTime,
      hour: '6',
      minute: '22',
    );
  }
}
