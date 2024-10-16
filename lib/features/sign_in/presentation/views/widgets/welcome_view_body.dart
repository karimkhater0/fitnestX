import 'package:fitness_app/core/utils/assets.dart';
import 'package:fitness_app/core/utils/functions/navigation_functions.dart';
import 'package:fitness_app/core/utils/widgets/custom_button.dart';
import 'package:fitness_app/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({super.key, required this.name});

  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(AssetsData.welcome),

        const SizedBox(height: 40,),
        Text(
          'Welcome, $name',
          style: Styles.textStyleH4Bold,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            'You are all set now, let’s reach your goals together with us',
            textAlign: TextAlign.center,
            style: Styles.textStyleSmallTextRegular.copyWith(color: kGreyDark),
          ),
        ),

        const Spacer(),

        CustomButton(
            linearGradient: kBlueGradient,
            text: 'Go To Home',
            onPressed: (){
              navigateAndFinish(context, const HomeView());
            },
        ),
      ]
    );
  }
}
