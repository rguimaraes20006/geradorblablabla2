import 'package:dio/dio.dart';



// To parse this JSON data, do
//
//     final randomAdvice = randomAdviceFromJson(jsonString);

import 'dart:convert';

RandomAdvice randomAdviceFromJson(String str) => RandomAdvice.fromJson(json.decode(str));

String randomAdviceToJson(RandomAdvice data) => json.encode(data.toJson());

class RandomAdvice {
    RandomAdvice({
        required this.slip,
    });

    Slip slip;

    factory RandomAdvice.fromJson(Map<String, dynamic> json) => RandomAdvice(
        slip: Slip.fromJson(json["slip"]),
    );

    Map<String, dynamic> toJson() => {
        "slip": slip.toJson(),
    };





  static Future<RandomAdvice> getRandomAdvice() async {
    var resp = await Dio().get("https://api.adviceslip.com/advice");
    final rvl = RandomAdvice.fromJson(json.decode(resp.data));
    return rvl;
  }





}

class Slip {
    Slip({
        required this.id,
        required this.advice,
    });

    int id;
    String advice;

    factory Slip.fromJson(Map<String, dynamic> json) => Slip(
        id: json["id"],
        advice: json["advice"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "advice": advice,
    };
}

