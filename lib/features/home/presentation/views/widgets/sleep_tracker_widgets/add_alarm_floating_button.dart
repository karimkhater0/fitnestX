import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/functions/navigation_functions.dart';
import '../../../../../../core/utils/widgets/custom_button.dart';
import '../../sleep_tracker_view.dart';
import 'add_alarm_view_body.dart';

class AddAlarmFloatingButton extends StatelessWidget {
  const AddAlarmFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      childWidget: const Icon(Icons.add_rounded, color: Colors.white,),
      linearGradient: kPurpleGradient,
      width: 60,
      height: 60,
      radius: 30,
      onPressed: (){
        navigateTo(context, const SleepTrackerView(body: AddAlarmViewBody(),));
      },
    );
  }
}
