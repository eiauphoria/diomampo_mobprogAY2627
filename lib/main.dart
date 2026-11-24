import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:diomampo_labact2a/constants.dart';
import 'package:diomampo_labact2a/screens/home_screen.dart';
import 'package:diomampo_labact2a/screens/newsfeed_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 715),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: appName,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: fbPrimary,
              primary: fbPrimary,
              secondary: fbSecondary,
              surface: fbTextColorWhite,
            ),
            appBarTheme: const AppBarTheme(
              backgroundColor: fbDarkPrimary,
              foregroundColor: fbTextColorWhite,
            ),
          ),
          initialRoute: "/home",
          routes: {
            "/newsfeed": (context) => const NewsfeedScreen(),
            "/home": (context) => const HomeScreen(),
          },
        );
      },
    );
  }
}