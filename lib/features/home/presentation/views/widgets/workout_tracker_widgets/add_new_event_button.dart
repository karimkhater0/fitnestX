import 'package:fitness_app/core/utils/functions/navigation_functions.dart';
import 'package:fitness_app/features/home/presentation/views/add_schedule_view.dart';
import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/widgets/custom_button.dart';

class AddNewEventButton extends StatelessWidget {
  const AddNewEventButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      childWidget: const Icon(Icons.add_rounded,color: Colors.white,),
      linearGradient: kPurpleGradient,
      isShadow: true,
      boxShadow: const [kPurpleBoxShadow],
      onPressed: (){
        navigateTo(context, const AddScheduleView());
      },
      height: 60,
      width: 60,
    );
  }
}
