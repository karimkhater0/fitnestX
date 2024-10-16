import 'package:fitness_app/features/home/presentation/views/widgets/sleep_tracker_widgets/add_alarm_floating_button.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/sleep_tracker_widgets/sleep_schedule_view_body.dart';
import 'package:flutter/material.dart';


class SleepScheduleView extends StatelessWidget {
  const SleepScheduleView({super.key,});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: SleepScheduleViewBody(),
          ),
      ),

      floatingActionButton: AddAlarmFloatingButton(),
    );
  }
}

