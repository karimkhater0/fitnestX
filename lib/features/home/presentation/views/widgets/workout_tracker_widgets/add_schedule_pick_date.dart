import 'package:fitness_app/features/home/presentation/manager/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';

class AddSchedulePickDate extends StatelessWidget {
  const AddSchedulePickDate({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, index) {
        var cubit = HomeCubit.get(context);
        return SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: InkWell(
              onTap: (){
                cubit.selectDate(context);
              },
              child: Row(
                children: [
                  const Icon(IconlyLight.calendar,color: kGrey,size: 22,),
                  const SizedBox(width: 10,),
                  Text(
                    cubit.formattedDate,
                    style: Styles.textStyleMediumTextRegular.copyWith(
                      color: kGrey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
