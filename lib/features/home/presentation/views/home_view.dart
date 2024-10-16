import 'package:fitness_app/constants.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/home_widgets/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';

import '../manager/cubit/home_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(

      builder: (context, state) {
        var cubit = HomeCubit.get(context);
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top:20.0,left: 20,right: 20),
              child: state is !GetUserDataLoadingState
                  ?cubit.screens[cubit.currentIndex]
                  :const Center(child: CircularProgressIndicator()),
            ),
          ),

          bottomNavigationBar: const CustomBottomNavigationBar(
            gradient: kPurpleGradient,
            activeIcons: [
              IconlyBold.home,
              IconlyBold.activity,
              IconlyBold.profile,
            ],
            inactiveIcons: [
              IconlyLight.home,
              IconlyLight.activity,
              IconlyLight.profile,
            ],
          ),
        );
      },
    );
  }
}


