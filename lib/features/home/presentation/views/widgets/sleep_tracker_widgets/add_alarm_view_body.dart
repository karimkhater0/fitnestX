import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/utils/widgets/custom_button.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/workout_tracker_widgets/add_schedule_container.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../../data/add_schedule_container_model.dart';
import '../home_widgets/custom_app_bar.dart';

class AddAlarmViewBody extends StatelessWidget {
  const AddAlarmViewBody({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          child: CustomAppBar(title: 'Add Alarm',backButton: true,),
        ),
        AlarmListView(),

        const Spacer(),
        CustomButton(
          onPressed: (){},
          text: 'Add',
          linearGradient: kBlueGradient,




        ),

        const SizedBox(height: 30,),
      ],
    );
  }
}

class AlarmListView extends StatelessWidget {
  AlarmListView({super.key});

  final List<AddScheduleContainerModel> models = [
    AddScheduleContainerModel(
      title: 'Bedtime',
      icon: Icons.bed_rounded,
      values: ['09:00 PM'],
    ),
    AddScheduleContainerModel(
      title: 'Hours of sleep',
      icon: IconlyLight.time_circle,
      values: ['8hours 30minutes'],
    ),
    AddScheduleContainerModel(
      title: 'Repeat',
      icon: Icons.repeat,
      values: ['Mon to Fri'],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: models.length,
      separatorBuilder: (context, index) => const SizedBox(height: 10,),
      itemBuilder: (context, index) => AddScheduleContainer(model: models[index]),
    );
  }
}
