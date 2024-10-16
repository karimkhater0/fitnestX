import 'package:fitness_app/features/home/presentation/manager/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/widgets/custom_button.dart';

class AddScheduleSaveButton extends StatelessWidget {
  const AddScheduleSaveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, index) {
            var cubit = HomeCubit.get(context);
            return Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: CustomButton(
                onPressed: (){
                  cubit.addAppointment();
                  Navigator.pop(context);
                },
                linearGradient: kBlueGradient,
                text: 'save',
                height: 60,


              ),
            );
          }
        ),
      ),
    );
  }
}
