import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../data/choose_plan_model.dart';
import '../../../data/user_data_model.dart';
import 'choose_plan_card.dart';

class ChoosePlanCardList extends StatelessWidget {
  ChoosePlanCardList({super.key, this.model});
  final UserDataModel? model;
  final List<ChoosePlanModel> choosePlanList = [
    ChoosePlanModel(
        title: 'Improve Shape',
        body:
        'I have a low amount of body fat and need / want to build more muscle',
        img: AssetsData.choosePlan1),
    ChoosePlanModel(
        title: 'Lean & Tone',
        body:
        'I’m “skinny fat”. look thin but have no shape. I want to add learn muscle in the right way',
        img: AssetsData.choosePlan2),
    ChoosePlanModel(
        title: 'Lose a Fat',
        body:
        'I have over 20 lbs to lose. I want to drop all this fat and gain muscle mass',
        img: AssetsData.choosePlan3),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      child: Swiper(
        itemBuilder: (context, index) {
          return ChoosePlanCard(
              svg: choosePlanList[index].img,
              title: choosePlanList[index].title,
              body: choosePlanList[index].body
          );
        },
        loop: false,
        onIndexChanged: (index){
          if(model != null)
            {
              model!.plan = choosePlanList[index].title;
            }
        },
        itemCount: choosePlanList.length,
        viewportFraction: 0.8,
        scale: 0.9,
      ),
    );
  }
}
