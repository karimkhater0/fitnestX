import 'package:fitness_app/features/home/presentation/manager/theme_cubit/theme_cubit.dart';
import 'package:fitness_app/features/home/presentation/views/home_view.dart';
import 'package:fitness_app/features/onboarding/presentation/views/get_started_view.dart';
import 'package:fitness_app/features/sign_in/presentation/views/sign_up_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc_observer.dart';
import 'core/utils/cache_helper.dart';
import 'features/home/presentation/manager/cubit/home_cubit.dart';
import 'features/sign_in/presentation/views/widgets/sign_up_view_body.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  Bloc.observer = MyBlocObserver();

  final Widget widget;
  bool? onBoarding = CacheHelper.getData(key: 'onBoarding');
  String? user = CacheHelper.getData(key: 'user');

  if (onBoarding != null) {
    if (user == '' || user == null) {
      widget = const SignUpView(widget: SignUpViewBody());
    } else {
      widget = const HomeView();
    }
  } else {
    widget = const GetStartedView();
  }
  runApp(MyApp(
    widget: widget,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.widget});

  final Widget widget;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeCubit>(
          create: (context) => HomeCubit()..getUserModel(),
        ),
        BlocProvider<ThemeCubit>(
            create: (context) => ThemeCubit()..setInitialTheme()
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'FitnestX',
            theme: state.themeData,
            home: widget,
          );
        }
      ),
    );
  }
}
