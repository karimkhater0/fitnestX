import 'package:fitness_app/core/utils/functions/calculate_age.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/home_widgets/user_info.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/home_widgets/user_profile.dart';
import 'package:flutter/material.dart';

import '../../../../data/info_container_model.dart';
import '../../../manager/cubit/home_cubit.dart';
import 'account_options_container.dart';
import 'custom_app_bar.dart';
import 'other_options_container.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});



  @override
  Widget build(BuildContext context) {
    var cubit = HomeCubit.get(context);
    final List<InfoContainerModel> infoContainerList = [
      InfoContainerModel(title: 'Height', value: '${cubit.model.height.round()}', unit: 'cm'),
      InfoContainerModel(title: 'Weight', value: '${cubit.model.weight}', unit: 'kg'),
      InfoContainerModel(title: 'Age', value: '${calculateAge(cubit.model.dateOfBirth!)}', unit: 'yo'),
    ];
    return SingleChildScrollView(
      child: Column(
        children: [
          const CustomAppBar(title: 'Profile',),
          const SizedBox(height: 35,),
          const UserProfile(),
          const SizedBox(height: 20,),

          Row(
            children: infoContainerList.map((item)
            => UserInfoContainer(model: item)).toList(),
          ),

          AccountOptionsContainer(),

          OtherOptionsContainer(),

          const SizedBox(height: 5,),
        ],
      ),
    );
  }
}

