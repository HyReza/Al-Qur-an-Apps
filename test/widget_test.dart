import 'dart:convert';

import 'package:al_quran/app/data/models/detail_surah.dart';
import 'package:al_quran/app/data/models/surah.dart';
import 'package:http/http.dart ' as http;

void main() async {
  Uri url = Uri.parse("https://api.quran.gading.dev/surah");
  var res = await http.get(url);

  List data = (jsonDecode(res.body) as Map<String, dynamic>)["data"];

  // print(data[113]["number"]);

  // Convert Raw data ke Model
  Surah surahAnnas = Surah.fromJson(data[113]);

  // print(surahAnnas.toJson());

  // print(surahAnnas.name);
  // print("=======================");
  // print(surahAnnas.number);
  // print("=======================");
  // print(surahAnnas.numberOfVerses);
  // print("=======================");
  // print(surahAnnas.revelation);
  // print("=======================");
  // print(surahAnnas.sequence);
  // print("=======================");
  // print(surahAnnas.tafsir);

  Uri urlAnnas =
      Uri.parse("https://api.quran.gading.dev/surah/${surahAnnas.number}");
  var resAnnas = await http.get(urlAnnas);

  Map<String, dynamic> dataAnnas =
      (jsonDecode(resAnnas.body) as Map<String, dynamic>)["data"];

  // Convert Raw data ke Model
  DetailSurah annas = DetailSurah.fromJson(dataAnnas);

  print(annas.verses[0].text.arab);
}
