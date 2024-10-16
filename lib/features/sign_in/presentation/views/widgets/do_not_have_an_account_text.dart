import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class DoNotHaveAnAccountText extends StatelessWidget {
  const DoNotHaveAnAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Don’t have an account yet?',
          style: Styles.textStyleMediumTextRegular,

        ),
        TextButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text(
            'Register',
            style: Styles.textStyleMediumTextRegular.copyWith(
              color: kPurpleDark,
            ),
          ),
        ),

      ],
    );
  }
}