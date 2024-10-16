import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import 'custom_text_form_field.dart';

class FormEmail extends StatelessWidget {
  const FormEmail({super.key, required this.controller});

  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: CustomTextFormField(
        keyboardType: TextInputType.emailAddress,
        controller: controller,
        hintText: 'Email',
        prefix: IconlyLight.message,
        validator: (value){
          if(value!.isEmpty){
            return 'Please enter your Email';
          }
          return null;
        },
      ),
    );
  }
}
