import 'package:fitness_app/core/utils/cache_helper.dart';
import 'package:fitness_app/features/sign_in/presentation/views/widgets/sign_up_view_body.dart';
import 'package:flutter/material.dart';
import 'package:gradient_circular_progress_indicator/gradient_circular_progress_indicator.dart';
import 'package:iconly/iconly.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/functions/navigation_functions.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import '../../../../sign_in/presentation/views/sign_up_view.dart';
import '../../manager/onboarding_cubit/onboarding_cubit.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton(
      {super.key, required this.cubit, required this.boardController});

  final OnboardingCubit cubit;
  final PageController boardController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: GradientCircularProgressIndicator(
        progress: cubit.progress,
        size: 70,
        gradient: kBlueGradient,
        stroke: 3,
        backgroundColor: const Color(0xFFF7F8F8),
        child: Center(
            child: CustomButton(
              linearGradient: kBlueGradient,
              childWidget: const Icon(
            IconlyLight.arrow_right_2,
            color: Colors.white,
            size: 18,
          ),
              width: 60,
              onPressed: () {
                if (cubit.isLast) {
                  CacheHelper.saveData(key: 'onBoarding', value: true);
                navigateAndFinish(
                   context,
                    const SignUpView(
                     widget: SignUpViewBody(),
                  )
                );
            } else {
              boardController.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn);
            }
          },
        )
        ),
      ),
    );
  }
}
