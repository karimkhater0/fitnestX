import 'package:fitness_app/core/utils/assets.dart';
import 'package:fitness_app/core/utils/styles.dart';

import 'package:fitness_app/features/home/data/latest_workout_item_model.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/home_widgets/progress_title_row.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/home_widgets/sleep_container.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/home_widgets/water_container.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/home_widgets/workout_progress_chart.dart';
import 'package:flutter/material.dart';


import '../../../../../onboarding/presentation/views/widgets/calories_container.dart';
import 'bmi_container.dart';
import 'check_today_target_container.dart';
import 'home_app_bar.dart';
import 'heart_rate_container.dart';
import 'latest_workout_item.dart';

class HomeViewBody extends StatelessWidget {
  HomeViewBody({super.key});

  final List<LatestWorkoutItemModel> models = [
    LatestWorkoutItemModel(
        title: 'Full body Workout',
        time: '20',
        calories: '180',
        svg: AssetsData.fullBody,
        progress: .4,
        onPressed: () {}
    ),
    LatestWorkoutItemModel(
        title: 'LowerBody Workout',
        time: '30',
        calories: '200',
        svg: AssetsData.lowerBody,
        progress: .62,
        onPressed: () {}
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeAppBar(),
          const SizedBox(height: 30,),

          const BmiContainer(),

          const CheckTodayTargetContainer(),

          ///Activity Status
          const Text(
            'Activity Status',
            style: Styles.textStyleLargeTextSemiBold,
          ),
          const HeartRateContainer(),
          const Row(
            children: [
              WaterContainer(),
              SizedBox(width: 15,),
              Expanded(
                  child: Column(
                    children: [
                      SleepContainer(),
                      SizedBox(height: 15,),
                      CaloriesContainer(),
                    ],
                  )
              ),
            ],
          ),

          ///Workout Progress
          const ProgressTitleRow(title: 'Workout Progress',),
          const WorkoutProgressChart(),

          ///Latest Workout
          const Padding(
            padding: EdgeInsets.only(top: 30.0, bottom: 15),
            child: Text(
              'Latest Workout',
              style: Styles.textStyleLargeTextSemiBold,
            ),
          ),
          ListView.separated(
              itemCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context,index)=>LatestWorkoutItem(model: models[index]),
              separatorBuilder: (context, index)=>const SizedBox(height: 15,),

          ),

          const SizedBox(height: 5,),

        ],
      ),
    );
  }
}
























