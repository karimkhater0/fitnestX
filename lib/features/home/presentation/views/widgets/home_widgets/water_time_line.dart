
import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class WaterIntakeTimeLine extends StatelessWidget {
  const WaterIntakeTimeLine({
    super.key,
  });

  final List waterIntakeJson = const [
    "6am - 8am",
    "9am - 11am",
    "11am - 2pm",
    "2pm - 4pm",
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(waterIntakeJson.length, (index) {
        if(index != waterIntakeJson.length - 1){
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 8,
                    height: 8,
                    decoration: const BoxDecoration(
                        gradient: kPurpleGradient,
                        shape: BoxShape.circle
                    ),
                  ),
                  const SizedBox(width: 6,),
                  Text(
                    waterIntakeJson[index],
                    style: Styles.textStyleSmallTextRegular,
                  ),
                ],
              ),
              const SizedBox(height: 2,),
              Padding(
                padding: const EdgeInsets.only(left: 3),
                child: Container(
                  height: 25,
                  width: 1,
                  decoration: const BoxDecoration(
                      gradient: kPurpleGradient
                  ),
                ),
              ),
              const SizedBox(height: 2,),
            ],
          );
        }
        else {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 8,
                    height: 8,
                    decoration: const BoxDecoration(
                        gradient: kPurpleGradient,
                        shape: BoxShape.circle
                    ),
                  ),
                  const SizedBox(width: 6,),
                  Text(
                    waterIntakeJson[index],
                    style: Styles.textStyleSmallTextRegular,
                  ),
                ],
              ),
            ],
          );
        }
      }),
    );
  }
}