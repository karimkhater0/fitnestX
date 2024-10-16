import 'dart:convert';

import 'package:fitness_app/core/utils/widgets/custom_button.dart';
import 'package:fitness_app/features/sign_in/data/user_data_model.dart';
import 'package:fitness_app/features/sign_in/presentation/views/sign_up_view.dart';
import 'package:fitness_app/features/sign_in/presentation/views/widgets/welcome_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/cache_helper.dart';
import '../../../../../core/utils/functions/navigation_functions.dart';
import '../../../../../core/utils/styles.dart';

import 'choose_plan_card_list.dart';

class ChoosePlanViewBody extends StatelessWidget {
  const ChoosePlanViewBody({super.key, required this.model});

  final UserDataModel model;
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        const Text(
          'What is your goal ?',
          style: Styles.textStyleH4Bold,
        ),
        Text(
          'It will help us to choose a best program for you',
          style: Styles.textStyleSmallTextRegular.copyWith(color: kGreyDark),
        ),
        const SizedBox(height: 50,),

        ///Card List
        ChoosePlanCardList(model: model,),
        const Spacer(),

        ///Confirm Button
        CustomButton(
            linearGradient: kBlueGradient,
            text: 'Confirm',
            onPressed: (){
              String userJson = jsonEncode(model.toJson());
              debugPrint(userJson);
              CacheHelper.saveData(key: 'user', value: userJson).then(
                      (value) {
                        debugPrint(value.toString());
                        navigateAndFinish(
                            context,
                            SignUpView(widget: WelcomeViewBody(name: model.firstName,)));
                      }).catchError((error){debugPrint(error.toString());});


            },
        ),
      ],
    );
  }
}
