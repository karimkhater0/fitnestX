import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../manager/cubit/login_cubit.dart';
import 'custom_text_form_field.dart';

class FormPassword extends StatelessWidget {
  const FormPassword({super.key, required this.controller, required this.cubit});

  final TextEditingController controller;
  final LoginCubit cubit;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: CustomTextFormField(
        keyboardType: TextInputType.visiblePassword,
        controller: controller,
        hintText: 'Password',
        prefix: IconlyLight.lock,
        isPassword: true,
        isPasswordHidden: cubit.isPassword,
        validator: (value){
          if(value!.isEmpty){
            return 'Please enter your Password';
          }
          return null;
        },
      ),
    );
  }
}
