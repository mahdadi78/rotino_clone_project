// To parse this JSON data, do
//
//     final empty = emptyFromJson(jsonString);

import 'dart:convert';

import 'package:flutter/material.dart';

List<RoutinModel> emptyFromJson(String str) => List<RoutinModel>.from(
    json.decode(str).map((x) => RoutinModel.fromJson(x)));

String emptyToJson(List<RoutinModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class RoutinModel {
  String title;
  bool reminder;
  int dayPerWeek;
  Color color;

  RoutinModel({
    required this.title,
    required this.reminder,
    required this.dayPerWeek,
    required this.color,
  });

  factory RoutinModel.fromJson(Map<String, dynamic> json) => RoutinModel(
        title: json["title"],
        reminder: json["reminder"],
        dayPerWeek: json["day_per_week"],
        color: json["color"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "reminder": reminder,
        "day_per_week": dayPerWeek,
        "color": color,
      };
}
