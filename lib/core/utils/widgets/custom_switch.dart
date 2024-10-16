import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants.dart';
import '../../../features/home/presentation/manager/cubit/home_cubit.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        var cubit = HomeCubit.get(context);
        return Switch(
          value: cubit.isOn,
          activeTrackColor: kPurpleDark,
          onChanged: (value){
            cubit.changeSwitch(value);
          },
        );
      },
    );
  }
}
