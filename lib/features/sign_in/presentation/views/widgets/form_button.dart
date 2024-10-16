import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/widgets/custom_button.dart';

class FormButton extends StatelessWidget {
  const FormButton({
    super.key,
    required this.isChecked,
    required this.onPressed,
    required this.formKey,
  });

  final bool isChecked;
  final void Function() onPressed;
  final GlobalKey<FormState> formKey;
  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: CustomButton(
            linearGradient: isChecked ? kBlueGradient : kGreyGradient,
            text: 'Register',
            onPressed: isChecked
                ? () {
                    if (formKey.currentState!.validate()) {
                      onPressed.call();
                    }
                  }
                : null),
      ),
    );
  }
}
