import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class TermsText extends StatelessWidget {
  const TermsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(

        children: [
          const TextSpan(
            text: 'By continuing you accept our ',
            style: Styles.textStyleCaptionRegular,
          ),
          TextSpan(
            text: 'Privacy Policy', // Clickable text
            style: Styles.textStyleCaptionRegular.copyWith(
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // Handle Privacy Policy click
                debugPrint('Privacy Policy clicked');
                // You can navigate to Privacy Policy page here
              },
          ),
          const TextSpan(
            text: ' and ',
            style: Styles.textStyleCaptionRegular,
          ),
          TextSpan(
            text: 'Term of Use',
            style: Styles.textStyleCaptionRegular.copyWith(
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // Handle Term of Use click
                debugPrint('Term of Use clicked');
                // You can navigate to Terms of Use page here
              },
          ),
        ],
      ),
    );
  }
}
