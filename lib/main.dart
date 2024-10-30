import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "My Al-Qur'an By Reza",
      initialRoute: Routes.INTRODUCTION,
      getPages: AppPages.routes,
    ),
  );
}
