import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/utils/assets.dart';
import 'package:fitness_app/core/utils/functions/navigation_functions.dart';
import 'package:fitness_app/core/utils/styles.dart';
import 'package:fitness_app/core/utils/widgets/custom_button.dart';
import 'package:fitness_app/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GetStartedViewBody extends StatelessWidget {
  const GetStartedViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          SvgPicture.asset(AssetsData.logo),
          const SizedBox(height: 15,),
          Text(
            'Everybody Can Train',
          style: Styles.textStyleLargeTextRegular.copyWith(
            color: kGreyDark,
          ),
          ),
          const Spacer(),

          CustomButton(
              linearGradient: kBlueGradient,
              text: 'Get Started',
              onPressed: () {
                navigateAndFinish(context, const OnboardingView());
                debugPrint(MediaQuery.of(context).size.width.toString());
              }
          ),

        ],
      ),
    );
  }
}
