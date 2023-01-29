import 'package:chat_app/res/color.dart';
import 'package:chat_app/res/color.dart';
import 'package:chat_app/res/fonts.dart';
import 'package:chat_app/utils/routes/route_name.dart';
import 'package:chat_app/utils/routes/routes.dart';
import 'package:chat_app/view/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: AppColors.primaryMaterialColor,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: AppColors.whiteColor,
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontSize: 22,
              fontFamily: AppFonts.sfProDisplayMedium,
              color: AppColors.primaryTextTextColor),
        ),
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 40,
              height: 1.6,
              color: AppColors.primaryTextTextColor,
              fontFamily: AppFonts.sfProDisplayMedium),
          headline2: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 32,
              height: 1.6,
              color: AppColors.primaryTextTextColor,
              fontFamily: AppFonts.sfProDisplayMedium),
          headline3: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 28,
              height: 1.9,
              color: AppColors.primaryTextTextColor,
              fontFamily: AppFonts.sfProDisplayMedium),
          headline4: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 24,
              height: 1.6,
              color: AppColors.primaryTextTextColor,
              fontFamily: AppFonts.sfProDisplayMedium),
          headline5: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              height: 1.6,
              color: AppColors.primaryTextTextColor,
              fontFamily: AppFonts.sfProDisplayMedium),
          headline6: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 17,
              height: 1.6,
              color: AppColors.primaryTextTextColor,
              fontFamily: AppFonts.sfProDisplayBold),
          bodyText1: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 17,
              height: 1.6,
              color: AppColors.primaryTextTextColor,
              fontFamily: AppFonts.sfProDisplayBold),
          bodyText2: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              height: 1.6,
              color: AppColors.primaryTextTextColor,
              fontFamily: AppFonts.sfProDisplayRegular),
          caption: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              height: 2.26,
              color: AppColors.primaryTextTextColor,
              fontFamily: AppFonts.sfProDisplayBold),
        ),
      ),
      initialRoute: RouteName.splashScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
