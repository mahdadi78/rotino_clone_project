import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rotino_clone_project/Views/home_page/home_page.dart';
import 'package:rotino_clone_project/Controllers/themes/theme_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.put(ThemeController());

    return GetMaterialApp(
      theme: themeController.isDarkMoode.value
          ? MyThemes.darkTheme
          : MyThemes.lightTheme,
      darkTheme: themeController.isDarkMoode.value
          ? MyThemes.darkTheme
          : MyThemes.lightTheme,
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: const Directionality(
          textDirection: TextDirection.rtl, child: MyHomePage()),
    );
  }
}
