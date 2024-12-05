import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rotino_clone_project/Models/routin_model.dart';

class RoutinController extends GetxController {
  var routinList = <RoutinModel>[].obs;
  setRoutin(String title, bool reminder, int dayPerWeek, Color color) {
    routinList.add(RoutinModel(
        title: title,
        reminder: reminder,
        dayPerWeek: dayPerWeek,
        color: color));
    for (int n = 0; n < routinList.length; n++) {}
  }
}
