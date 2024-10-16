import 'package:fitness_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../data/models/onboarding_model.dart';
import '../../manager/onboarding_cubit/onboarding_cubit.dart';
import 'onboarding_button.dart';
import 'onboarding_text_widget.dart';

class OnboardingViewBody extends StatelessWidget {
  OnboardingViewBody({super.key});

  final boardController = PageController();
  final List<OnboardingModel> boarding = [
    OnboardingModel(
      image: AssetsData.onboarding1,
      title: 'Track Your Goal',
      body:
          'Don\'t worry if you have trouble determining your goals, We can help you determine your goals and track your goals',
    ),
    OnboardingModel(
      image: AssetsData.onboarding2,
      title: 'Get Burn',
      body:
          'Let’s keep burning, to achieve yours goals, it hurts only temporarily, if you give up now you will be in pain forever',
    ),
    OnboardingModel(
      image: AssetsData.onboarding3,
      title: 'Eat Well',
      body:
          'Let\'s start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun',
    ),
    OnboardingModel(
      image: AssetsData.onboarding4,
      title: 'Improve Sleep Quality',
      body:
          'Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var cubit = OnboardingCubit.get(context);
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        PageView.builder(
          controller: boardController,
          itemCount: boarding.length,
          onPageChanged: (index) {
            cubit.changeOnBoardingPage(index);
          },
          itemBuilder: (context, index) => Column(
            children: [
              SvgPicture.asset(
                boarding[index].image,
                width: MediaQuery.of(context).size.width,
              ),

              OnboardingTextWidget(
                title: boarding[index].title,
                body: boarding[index].body,
              ),
            ],
          ),
        ),

        OnboardingButton(
          cubit: cubit,
          boardController: boardController,
        ),
      ],
    );
  }
}
