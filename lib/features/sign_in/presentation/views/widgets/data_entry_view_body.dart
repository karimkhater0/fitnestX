import 'package:fitness_app/core/utils/assets.dart';
import 'package:fitness_app/features/sign_in/data/user_data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'data_form.dart';
import 'data_form_text.dart';

class DataEntryViewBody extends StatelessWidget {
  const DataEntryViewBody({super.key, required this.model});


  final UserDataModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
        [
          Stack(
            alignment: Alignment.center,
            children: [
              SvgPicture.asset(AssetsData.vector),
              SvgPicture.asset(AssetsData.dataEntry),
            ],
          ),

          const DataFormText(),

          DataForm(model: model,),

        ]
    );
  }
}


