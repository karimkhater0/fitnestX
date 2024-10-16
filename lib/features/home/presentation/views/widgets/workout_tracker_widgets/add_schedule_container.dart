import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/utils/widgets/custom_container.dart';
import '../../../../data/add_schedule_container_model.dart';
import '../../../manager/cubit/home_cubit.dart';

class AddScheduleContainer extends StatelessWidget {
  const AddScheduleContainer({super.key, required this.model});

  final AddScheduleContainerModel model;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, index) {
        var cubit = HomeCubit.get(context);
        return PopupMenuButton(
          onSelected: (value){
            if(model.title == 'Choose Workout') {
              cubit.chooseWorkout(value);
            }
          },
          itemBuilder: (BuildContext context) {
            return model.values!.map((String item) {
              return PopupMenuItem<String>(
                value: item,
                child: Text(item),
              );
            }).toList();
          },
          child: CustomContainer(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            height: 50,
            radius: 16,
            child: Row(
              children: [
                Icon(model.icon, color: kGrey,),
                const SizedBox(width: 10,),
                Expanded(
                  child: Text(
                    model.title,
                    style: Styles.textStyleSmallTextRegular.copyWith(
                      color: kGrey,
                    ),
                  ),
                ),

                Text(
                  model.title == 'Choose Workout'
                      ? cubit.selectedWorkout
                      : model.values?[0] ?? '',
                  style: Styles.textStyleCaptionRegular,
                ),
                const SizedBox(width: 5,),
                const Icon(IconlyLight.arrow_right_2, color: kGrey,),

              ],
            ),
          ),
        );
      }
    );
  }
}

