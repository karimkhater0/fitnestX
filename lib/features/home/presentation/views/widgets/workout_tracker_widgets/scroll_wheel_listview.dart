import 'package:fitness_app/features/home/presentation/views/widgets/workout_tracker_widgets/scroll_wheel_item.dart';
import 'package:flutter/material.dart';

class CaloriesScrollWheelListView extends StatelessWidget {
  const CaloriesScrollWheelListView({super.key});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55 * 3 - 20,
      child: ListWheelScrollView.useDelegate(
        itemExtent: 53,
        overAndUnderCenterOpacity: .5,
        controller: FixedExtentScrollController(initialItem: 30,),
        physics: const FixedExtentScrollPhysics(),
        childDelegate: ListWheelChildBuilderDelegate(
          builder: (context, index) =>ScrollWheelItem(index: index+1),
          childCount: 100,
        ),
      ),
    );
  }
}
