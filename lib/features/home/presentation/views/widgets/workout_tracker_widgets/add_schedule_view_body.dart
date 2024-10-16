import 'package:fitness_app/core/utils/styles.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/home_widgets/custom_app_bar.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/workout_tracker_widgets/clock_add_schedule_widget.dart';
import 'package:flutter/material.dart';

import 'add_schedule_pick_date.dart';
import 'add_schedule_save_button.dart';
import 'details_workout_listview.dart';

class AddScheduleViewBody extends StatelessWidget {
  const AddScheduleViewBody({super.key});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 30,)),
          const SliverToBoxAdapter(
            child: CustomAppBar(
              title: 'Add Schedule',
              backButton: true,
              icon: Icons.close_rounded,
            ),
          ),

          ///date
          const AddSchedulePickDate(),

          ///Time
          const SliverToBoxAdapter(
            child: Text(
              'Time',
              style: Styles.textStyleMediumTextMedium,
            ),
          ),
          const SliverToBoxAdapter(child: ClockAddScheduleWidget()),

          const SliverToBoxAdapter(child: SizedBox(height: 30,)),

          ///Details
          const SliverToBoxAdapter(
            child: Text(
              'Details Workout',
              style: Styles.textStyleMediumTextMedium,
            ),
          ),
          SliverToBoxAdapter(child: DetailsWorkoutListView()),

          ///Save Button
          const AddScheduleSaveButton(),
        ],
      ),
    );
  }
}


