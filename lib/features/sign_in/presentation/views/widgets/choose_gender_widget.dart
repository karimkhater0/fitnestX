import 'package:fitness_app/features/sign_in/data/user_data_model.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../../../constants.dart';

class ChooseGenderWidget extends StatelessWidget {
  const ChooseGenderWidget({super.key, required this.model,});

  final UserDataModel model;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: const InputDecoration(
        fillColor: kBorderColor,
        filled: true,
        hintText: 'Choose Gender',
        prefixIcon: Icon(IconlyLight.user),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(14),
            )),
      ),
      items: const[
        DropdownMenuItem(
          value: 'male',
          child: Text('Male'),
        ),
        DropdownMenuItem(
          value: 'female',
          child: Text('Female'),
        ),
      ],
      icon: const Icon(IconlyLight.arrow_down_2),
      onChanged: (String? value) {
        model.gender = value!;

      },

    );
  }
}
