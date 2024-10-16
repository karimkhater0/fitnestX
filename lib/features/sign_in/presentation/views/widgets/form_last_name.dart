import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import 'custom_text_form_field.dart';

class FormLastName extends StatelessWidget {
  const FormLastName({super.key, required this.controller});

  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: CustomTextFormField(
        keyboardType: TextInputType.name,
        controller: controller,
        hintText: 'Last Name',
        prefix: IconlyLight.profile,
        validator: (value){
          if(value!.isEmpty){
            return 'Please enter your last name';
          }
          return null;
        },
      ),
    );
  }
}
