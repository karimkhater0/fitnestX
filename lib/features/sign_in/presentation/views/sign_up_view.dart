import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manager/cubit/login_cubit.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key, required this.widget});

  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 30),
          child: widget,
        )),
      ),
    );
  }
}
