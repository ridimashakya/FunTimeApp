import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:funtime/app/core/theme/theme.dart';
import 'app/routes/app_pages.dart';

void main() {
  MaterialTheme theme = const MaterialTheme(TextTheme());
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      theme: theme.light(), // Apply blue theme
    ),
  );
}
