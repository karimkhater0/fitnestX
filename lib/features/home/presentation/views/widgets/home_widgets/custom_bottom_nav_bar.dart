import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/widgets/custom_container.dart';
import '../../../../../../core/utils/widgets/gradient_icon.dart';
import '../../../manager/cubit/home_cubit.dart';
import 'active_icon_dot_widget.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.gradient,
    required this.activeIcons,
    required this.inactiveIcons,
  });



  final Gradient gradient;
  final List<IconData> activeIcons;
  final List<IconData> inactiveIcons;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        var cubit = HomeCubit.get(context);
        return CustomContainer(
          radius: 0,
          height: 60,
          padding: EdgeInsets.zero,
          child: Row(
            children:activeIcons.map((item){
              var index = activeIcons.indexOf(item);
              return Expanded(
                child: Column(
                  children: [
                    GradientIcon(
                      onPressed: (){
                        cubit.changeBottomNavBar(index);
                      },
                      icon: cubit.currentIndex == index
                          ? activeIcons[index]
                          : inactiveIcons[index],
                      gradient: cubit.currentIndex == index
                          ? gradient
                          : kGreyGradient,
                    ),
                    cubit.currentIndex == index
                        ? ActiveIconDotWidget(gradient: gradient)
                        : const SizedBox()
                  ],
                ),
              );
            }).toList(),
          ),
        );
      }
    );
  }
}


