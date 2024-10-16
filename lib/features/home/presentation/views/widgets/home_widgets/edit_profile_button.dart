import 'package:fitness_app/core/utils/functions/navigation_functions.dart';
import 'package:fitness_app/features/home/presentation/views/edit_screen_view.dart';
import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/utils/widgets/custom_button.dart';


class EditProfileButton extends StatelessWidget {
  const EditProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      radius: 50,
      height: 40,
      width: 120,
      onPressed: (){
        navigateTo(context, const EditScreenView());
      },
      linearGradient: kBlueGradient,
      childWidget: Row(
        children: [
          const Icon(Icons.edit),
          Text(
            'Edit Data',
            style: Styles.textStyleSmallTextMedium.copyWith(
                color: Colors.white
            ),
          ),
        ],
      ),
    );
  }
}
