import 'package:fitness_app/features/home/presentation/views/widgets/sleep_tracker_widgets/sleep_tracker_view_body.dart';
import 'package:flutter/material.dart';

class SleepTrackerView extends StatelessWidget {
  const SleepTrackerView({super.key, this.body});

  final Widget? body;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: body ?? const SleepTrackerViewBody(),
          )
      ),
    );
  }
}
