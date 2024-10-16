import 'package:fitness_app/features/home/presentation/views/widgets/home_widgets/personal_data.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/home_widgets/profile_row_item.dart';
import 'package:fitness_app/features/home/presentation/views/workout_tracker_view.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/utils/widgets/custom_container.dart';
import '../../../../data/profile_item_model.dart';
import '../workout_tracker_widgets/workout_tracker_view_body.dart';


class AccountOptionsContainer extends StatelessWidget {
  AccountOptionsContainer({super.key});

  final List<ProfileItemModel> accountOptions = [
    ProfileItemModel(
        title: 'Personal Data',
        icon: IconlyLight.profile,
        widget: const PersonalData()
    ),
    ProfileItemModel(title: 'Achievement', icon: IconlyLight.document),
    ProfileItemModel(title: 'Activity History', icon: IconlyLight.graph),
    ProfileItemModel(
      title: 'Workout Progress',
      icon: IconlyLight.chart,
      widget: const WorkoutTrackerView(body: WorkoutTrackerViewBody(),),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: CustomContainer(
        height: 258,
        radius: 16,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Account',
              style: Styles.textStyleLargeTextSemiBold,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: accountOptions.length,
              itemBuilder: (context, index)
              => ProfileRowItem(
                title: accountOptions[index].title,
                icon: accountOptions[index].icon,
                widget: accountOptions[index].widget,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
