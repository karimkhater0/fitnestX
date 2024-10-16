import 'package:fitness_app/core/utils/styles.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/home_widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../constants.dart';
import '../../../manager/theme_cubit/theme_cubit.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          const CustomAppBar(title: 'Settings',backButton: true,actionButton: false,),
          const SizedBox(height: 30,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Dark Mode',
                style: Styles.textStyleLargeTextSemiBold,
              ),
              Switch(
                  activeTrackColor: kPurpleDark,
                  value: isDarkMode,
                  onChanged: (value){
                    context.read<ThemeCubit>().toggleTheme(!isDarkMode);
                  }
              ),
            ],
          ),
        ],
      ),
    );
  }
}
