import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../manager/cubit/login_cubit.dart';


class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    super.key,
    required this.keyboardType,
    required this.controller,
    required this.hintText,
    required this.prefix,
    this.validator,
    this.isPasswordHidden,
    this.isPassword = false,
    this.readOnly,
    this.onTap
  });

  bool? isPasswordHidden;
  bool isPassword;
  bool? readOnly;
  void Function()? onTap;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final String hintText;
  final IconData prefix;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.5),
      child: TextFormField(

        textAlign: TextAlign.start,
        controller: controller,
        validator: validator,
        readOnly: readOnly ?? false,
        onTap: onTap,
        obscureText: isPasswordHidden ?? false,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          fillColor: kBorderColor,
          filled: true,
          hintText: hintText,
          prefixIcon: Icon(prefix),
          suffixIcon: isPassword
              ? IconButton(
                  onPressed: () {
                    LoginCubit.get(context).changePasswordVisibility();
                  },
                  icon: Icon(LoginCubit.get(context).suffix),
                )
              : null,
          border: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(
                Radius.circular(14),
              )),
        ),
      ),
    );
  }
}
