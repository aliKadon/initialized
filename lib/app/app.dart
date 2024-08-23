import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resources/color_manager.dart';
import '../resources/theme_manager.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          locale: const Locale('en'),
          // builder: DevicePreview.appBuilder,
          debugShowCheckedModeBanner: false,
          home: const Scaffold(),
          theme: getApplicationTheme(),
          darkTheme: ThemeData(
            useMaterial3: true,
            brightness: Brightness.dark,
            colorSchemeSeed: ColorManager.appBar,
          ),
          themeMode: ThemeMode.dark,
        );
      },
    );
  }
}
