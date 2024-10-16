import 'package:fitness_app/core/utils/functions/navigation_functions.dart';
import 'package:fitness_app/features/sign_in/presentation/views/widgets/sign_in_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import '../sign_up_view.dart';

class HaveAnAccountText extends StatelessWidget {
  const HaveAnAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Already have an account?',
          style: Styles.textStyleMediumTextRegular,

        ),
        TextButton(
          onPressed: (){
            navigateTo(context, SignUpView(widget: SignInViewBody()));
          },
          child: Text(
            'Login',
            style: Styles.textStyleMediumTextRegular.copyWith(
              color: kPurpleDark,
            ),
          ),
        ),

      ],
    );
  }
}
