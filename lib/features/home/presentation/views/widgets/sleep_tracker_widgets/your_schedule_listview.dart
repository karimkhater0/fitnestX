import 'package:fitness_app/features/home/presentation/views/widgets/sleep_tracker_widgets/your_schedule_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../manager/cubit/home_cubit.dart';

class YouScheduleListView extends StatelessWidget {
  const YouScheduleListView({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..getDaysInWeek(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          var cubit = HomeCubit.get(context);
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: SizedBox(
              height: 80,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: cubit.days.length,
                separatorBuilder: (context, index) => const SizedBox(width: 15,),
                itemBuilder: (context, index) => YourScheduleItem(
                  date: cubit.dates[index],
                  day: cubit.days[index],
                  isToday: index == 0,
                ),

              ),
            ),
          );
        },
      ),
    );
  }
}
