import 'package:flutter/material.dart';
import 'package:intialized/resources/styles_manager.dart';
import 'package:intialized/resources/values_manager.dart';


import 'color_manager.dart';
import 'font_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    scaffoldBackgroundColor: ColorManager.primary,
    // fontFamily: "NotoKufiArabic",
    // main colors
    primaryColor: ColorManager.primary,
    // primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.primary,
    disabledColor: ColorManager.grey,
    splashColor: ColorManager.greyLight,
    iconTheme: IconThemeData(
      color: ColorManager.iconColor,
    ),
    // cardView theme
    cardTheme: CardTheme(color: ColorManager.white, shadowColor: ColorManager.grey, elevation: AppSize.s2),
    // app bar theme
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: ColorManager.appBarIcons),
      color: ColorManager.appBar,
      elevation: AppSize.s0,
      shadowColor: ColorManager.transparent,
      titleTextStyle: TextStyle(fontSize: FontSize.s16, color: ColorManager.black, fontWeight: FontWeight.w600, fontFamily: "NotoKufiArabic"),
    ),
    // button theme
    buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppRadius.r8)),
        ),
        disabledColor: ColorManager.grey,
        buttonColor: ColorManager.black,
        splashColor: ColorManager.greyLight),

    // elevated button them
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            textStyle: getMediumStyle(color: ColorManager.white, fontSize: FontSize.s18),
            // foregroundColor: ColorManager.primary,
            backgroundColor: ColorManager.black,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppRadius.r8)))),

    textTheme: TextTheme(
        displayLarge: getMediumStyle(
          color: ColorManager.white.withOpacity(0.949999988079071),
          fontSize: FontSize.s14,
        ),
        headlineLarge: getRegularStyle(color: ColorManager.blackLight, fontSize: FontSize.s14),
        headlineMedium: getRegularStyle(color: ColorManager.grey, fontSize: FontSize.s10),
        titleMedium: getMediumStyle(color: ColorManager.blackLight, fontSize: FontSize.s16),
        titleSmall: getRegularStyle(color: ColorManager.white, fontSize: FontSize.s16),
        bodyLarge: getRegularStyle(
          color: ColorManager.grey,
        ),
        bodySmall: getRegularStyle(color: ColorManager.grey),
        bodyMedium: getRegularStyle(color: ColorManager.grey, fontSize: FontSize.s12),
        labelSmall: getBoldStyle(color: ColorManager.black, fontSize: FontSize.s12)),

    // input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(

        // content padding
        contentPadding: EdgeInsets.all(AppPadding.p10),
        // hint style
        hintStyle: getRegularStyle(color: ColorManager.grey, fontSize: FontSize.s14),
        labelStyle: getMediumStyle(color: ColorManager.grey, fontSize: FontSize.s14),
        errorStyle: getRegularStyle(color: ColorManager.red),
        // enabled border style
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.all(Radius.circular(AppRadius.r8))),

        // focused border style
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: ColorManager.blackLight, width: AppSize.s1_5), borderRadius: BorderRadius.all(Radius.circular(AppRadius.r8))),

        // error border style
        errorBorder: OutlineInputBorder(borderSide: BorderSide(color: ColorManager.red, width: AppSize.s1_5), borderRadius: BorderRadius.all(Radius.circular(AppRadius.r8))),
        // focused border style
        focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(color: ColorManager.blackLight, width: AppSize.s1_5), borderRadius: BorderRadius.all(Radius.circular(AppRadius.r8)))),
    // label style
  );
}
