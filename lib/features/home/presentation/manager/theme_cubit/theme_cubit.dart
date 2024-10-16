import 'package:fitness_app/core/utils/cache_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  static final ThemeData lightTheme = ThemeData.light();
  static final ThemeData darkTheme = ThemeData.dark();
  ThemeCubit() : super(ThemeState(lightTheme));


  void toggleTheme(bool isDark)
  {
    final themeData = isDark ? darkTheme : lightTheme;
    emit(ThemeState(themeData));
    CacheHelper.saveData(key: 'isDark', value: isDark);
  }

  Future<bool> getTheme()async
  {
    return await CacheHelper.getData(key: 'isDark') ?? false;
  }

  Future<void> setInitialTheme()async
  {
    final isDark = await getTheme();
    toggleTheme(isDark);
  }

}
