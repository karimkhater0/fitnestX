import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/utils/functions/calculate_age.dart';
import 'package:fitness_app/core/utils/styles.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/home_widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../manager/cubit/home_cubit.dart';
import 'build_info_card.dart';
import 'build_info_row.dart';
import 'edit_profile_button.dart';
import 'icon_avatar.dart';

class PersonalData extends StatelessWidget {

  const PersonalData({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          var cubit = HomeCubit.get(context);
          var age = calculateAge(cubit.model.dateOfBirth!);
          return SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(

                children: [
                  const CustomAppBar(title: 'Personal Data',backButton: true,),
                  const SizedBox(height: 20),
            
                  /// Profile Icon
                  const IconAvatar(),
                  const SizedBox(height: 20),

                  /// Name
                  Text(
                    '${cubit.model.firstName} ${cubit.model.lastName}',
                    style: Styles.textStyleH1Bold,
                  ),
                  const SizedBox(height: 8),

                  /// Email
                  Text(
                    cubit.model.email,
                    style: Styles.textStyleLargeTextRegular.copyWith(
                      color: kGrey,
                    ),
                  ),
                  const SizedBox(height: 30),
            
                  /// Age, Weight, Height
                  BuildInfoCard(
                    title: 'Physical Details',
                    icon: Icons.fitness_center,
                    children: [
                      BuildInfoRow(label: 'Age',value: '$age years'),
                      BuildInfoRow(label: 'Weight',value: '${cubit.model.weight} kg'),
                      BuildInfoRow(label: 'Height',value: '${cubit.model.height} cm'),
                    ],
                  ),
                  const SizedBox(height: 20),
            
                  /// Contact Information
                  BuildInfoCard(
                    title: 'Contact Information',
                    icon: Icons.email,
                    children: [
                      BuildInfoRow(value: cubit.model.email, label: 'Email',),
                    ],
                  ),
                  const SizedBox(height: 40),
            
                  /// Edit Button
                  const EditProfileButton(),
                ],
              ),
            ),
          );
        }
      ),
    );
  }

}



