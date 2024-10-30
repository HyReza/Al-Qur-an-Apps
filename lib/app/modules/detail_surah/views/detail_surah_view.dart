import 'package:al_quran/app/data/models/surah.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/detail_surah_controller.dart';

class DetailSurahView extends GetView<DetailSurahController> {
  final Surah surah = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SURAH ${surah.name?.transliteration?.id?.toUpperCase() ?? 'Error...'}",
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                      "${surah.name?.transliteration?.id?.toUpperCase() ?? 'Error...'}")
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
