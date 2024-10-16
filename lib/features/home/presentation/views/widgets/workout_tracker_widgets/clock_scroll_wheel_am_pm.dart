import 'package:fitness_app/features/home/presentation/manager/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';

class ClockScrollWheelAmPm extends StatelessWidget {
  const ClockScrollWheelAmPm({super.key,});

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        var cubit = HomeCubit.get(context);
        return SizedBox(
          width: 60,
          height: 90,
          child: ListWheelScrollView.useDelegate(
            itemExtent: 30,
            controller: FixedExtentScrollController(initialItem: cubit.amPm == 'AM' ? 0 : 1),
            overAndUnderCenterOpacity: .5,
            onSelectedItemChanged: (index){
              index == 0
                  ? cubit.amPm = 'AM'
                  : cubit.amPm = 'PM';
            },
            physics: const FixedExtentScrollPhysics(),
            childDelegate: ListWheelChildBuilderDelegate(
              builder: (context, index) {
                return Text(
                  index == 0 ? 'AM' : 'PM',
                  style: Styles.textStyleLargeTextMedium.copyWith(color: kGreyDark),
                );
              },
              childCount: 2,
            ),
          ),
        );
      }
    );
  }
}
