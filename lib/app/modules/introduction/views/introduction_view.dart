import 'package:al_quran/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/introduction_controller.dart';

class IntroductionView extends GetView<IntroductionController> {
  const IntroductionView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Al-Qur'an Apps",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Text(
              "Create By Reza Edi Saputra (202203040041)",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: 350,
            child: Lottie.asset("assets/lotties/animasi-quran.json"),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => Get.offAllNamed(Routes.HOME),
            child: Text("GET STARTER"),
          ),
        ],
      ),
    ));
  }
}
