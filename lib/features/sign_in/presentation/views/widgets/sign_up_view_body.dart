import 'package:fitness_app/core/utils/styles.dart';
import 'package:fitness_app/features/sign_in/presentation/views/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';

import 'custom_divider.dart';
import 'custom_special_login_row.dart';
import 'have_an_account_text.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});


  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Hey There,',
          style: Styles.textStyleLargeTextRegular,
        ),
        const Text(
          'Create an Account',
          style: Styles.textStyleH4Bold,
        ),
        const SizedBox(height: 22,),

        SignUpForm(),

        const CustomDivider(),

        const CustomSpecialLoginRow(),

        const HaveAnAccountText(),

      ],
    );
  }
}






