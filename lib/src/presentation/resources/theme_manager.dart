import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'color_manager.dart';
import 'font_manager.dart';
import 'styles_manager.dart';
import 'values_manager.dart';

class CustomTheme {
  static ThemeData getLightTheme() {
    return ThemeData(
        // main colors of the app
        primaryColor: ColorManager.primary,
        primaryColorLight: ColorManager.primaryOpacity70,
        primaryColorDark: ColorManager.darkPrimary,
        disabledColor: ColorManager.grey1,
        // ripple color
        splashColor: ColorManager.primaryOpacity70,
        // will be used incase of disabled button for example
        accentColor: ColorManager.grey,
        // card view theme
        cardTheme: CardTheme(
            color: ColorManager.white,
            shadowColor: ColorManager.grey,
            elevation: AppSize.s4),
        // App bar theme
        appBarTheme: AppBarTheme(
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: ColorManager.primary,
            statusBarIconBrightness:
                Brightness.dark, // For Android (dark icons)
            statusBarBrightness: Brightness.light, // For iOS (dark icons)
          ),
          // centerTitle: true,
          color: ColorManager.primary,
          elevation: AppSize.s1,
          shadowColor: ColorManager.primaryOpacity70,
          titleTextStyle: getSemiBoldStyle(
              color: ColorManager.white, fontSize: FontSize.s24),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: ColorManager.primary,
        ),
        navigationBarTheme: NavigationBarThemeData(
          indicatorColor: ColorManager.primary,
          height: AppSize.s60,
          backgroundColor: ColorManager.white,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        ),
        // Button theme
        buttonTheme: ButtonThemeData(
            shape: const RoundedRectangleBorder(),
            disabledColor: ColorManager.grey1,
            buttonColor: ColorManager.primary,
            splashColor: ColorManager.primaryOpacity70),

        // elevated button theme
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(AppPadding.p16),
                textStyle: getRegularStyle(
                    fontSize: FontSize.s16, color: ColorManager.white),
                primary: ColorManager.primary,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSize.s16)))),
        textButtonTheme: TextButtonThemeData(
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(AppPadding.p16),
                textStyle: getRegularStyle(
                    fontSize: FontSize.s16, color: ColorManager.white),
                // primary: ColorManager.primary,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSize.s16)))),
        // Text theme
        textTheme: TextTheme(
            headline1: getSemiBoldStyle(
                color: ColorManager.darkBlue, fontSize: FontSize.s16),
            headline2: getRegularStyle(
                color: ColorManager.white, fontSize: FontSize.s16),
            headline3: getBoldStyle(
                color: ColorManager.primary, fontSize: FontSize.s16),
            headline4: getRegularStyle(
                color: ColorManager.primary, fontSize: FontSize.s14),
            subtitle1: getMediumStyle(
                color: ColorManager.black, fontSize: FontSize.s16),
            subtitle2: getMediumStyle(
                color: ColorManager.primary, fontSize: FontSize.s16),
            bodyText2: getMediumStyle(color: ColorManager.lightGrey),
            caption: getRegularStyle(color: ColorManager.grey1),
            bodyText1: getRegularStyle(
                color: ColorManager.grey, fontSize: FontSize.s17)),
        // input decoration theme (text form field)

        inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.all(AppPadding.p16),
          // hint style
          hintStyle: getRegularStyle(color: ColorManager.grey1),

          // label style
          labelStyle: getMediumStyle(
              fontSize: FontSize.s16, color: ColorManager.darkBlue),
          // error style
          errorStyle: getRegularStyle(
              fontSize: FontSize.s16, color: ColorManager.error),

          // enabled border
          enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: ColorManager.grey, width: AppSize.s1_5),
              borderRadius:
                  const BorderRadius.all(Radius.circular(AppSize.s8))),

          // focused border
          focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
              borderRadius:
                  const BorderRadius.all(Radius.circular(AppSize.s8))),

          // error border
          errorBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: ColorManager.error, width: AppSize.s1_5),
              borderRadius:
                  const BorderRadius.all(Radius.circular(AppSize.s8))),
          // focused error border
          focusedErrorBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
              borderRadius:
                  const BorderRadius.all(Radius.circular(AppSize.s8))),
        ));
  }
}
