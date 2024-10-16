import 'package:fitness_app/features/home/presentation/manager/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'clock_scroll_wheel_item.dart';

class ClockScrollWheelHours extends StatelessWidget {
  const ClockScrollWheelHours({super.key, });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        var cubit = HomeCubit.get(context);
        return SizedBox(
          height: 90,
          width: 25,
          child: ListWheelScrollView.useDelegate(
            itemExtent: 30,
            controller: FixedExtentScrollController(
              initialItem: int.parse(cubit.hour) - 1,
            ),
            onSelectedItemChanged: (index){
              cubit.hour = (index+1).toString();
            },
            overAndUnderCenterOpacity: .5,
            physics: const FixedExtentScrollPhysics(),
            childDelegate: ListWheelChildBuilderDelegate(
              builder: (context, index) =>ClockScrollWheelItem(index: index+1),
              childCount: 12,
            ),
          ),
        );
      }
    );
  }
}
