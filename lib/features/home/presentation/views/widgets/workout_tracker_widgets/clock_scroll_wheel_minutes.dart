import 'package:fitness_app/features/home/presentation/manager/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'clock_scroll_wheel_item.dart';

class ClockScrollWheelMinutes extends StatelessWidget {
  const ClockScrollWheelMinutes({super.key, });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, index) {
        var cubit = HomeCubit.get(context);
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: SizedBox(
            width: 25,
            height: 90,
            child: ListWheelScrollView.useDelegate(
              itemExtent: 30,
              controller: FixedExtentScrollController(
                  initialItem: int.parse(cubit.minute)
              ),
              overAndUnderCenterOpacity: .5,

              onSelectedItemChanged: (index){
                cubit.minute = (index).toString();
              },
              physics: const FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                builder: (context, index) =>ClockScrollWheelItem(index: index),
                childCount: 60,
              ),
            ),
          ),
        );
      }
    );
  }
}
