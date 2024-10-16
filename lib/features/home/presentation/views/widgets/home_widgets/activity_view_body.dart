import 'package:fitness_app/core/utils/assets.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/home_widgets/progress_title_row.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/home_widgets/today_target_container.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';
import '../../../../data/notification_model.dart';
import 'activity_progress_chart.dart';
import 'custom_app_bar.dart';
import 'latest_activity_container.dart';

class ActivityViewBody extends StatelessWidget {
  const ActivityViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(title: 'Activity Tracker'),
          const SizedBox(height: 30,),

          const TodayTargetContainer(),
          const ProgressTitleRow(title: 'Activity Progress'),
          const ActivityProgressChart(),

          ///Latest Activity
          const Padding(
            padding: EdgeInsets.only(top: 30.0, bottom: 15),
            child: Text(
              'Latest Activity',
              style: Styles.textStyleLargeTextSemiBold,
            ),
          ),
          LatestActivityContainer(
            model: NotificationModel(
              title: 'Drinking 300ml Water',
              img: AssetsData.profilePhoto,
              time: 'About 3 minutes ago',
            ),
          ),
          LatestActivityContainer(
            model: NotificationModel(
              title: 'Eat Snack (Fitbar)',
              img: AssetsData.eatSnack,
              time: 'About 10 minutes ago',
            ),
          ),

        ],
      ),
    );
  }
}

