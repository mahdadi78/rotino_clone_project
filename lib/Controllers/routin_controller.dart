import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rotino_clone_project/Models/routin_model.dart';

class RoutinController extends GetxController {
  var routinList = <RoutinModel>[
    RoutinModel(
      title: 'سفر ادامه دار',
      reminder: false,
      dayPerWeek: 5,
      color: const Color.fromARGB(255, 157, 107, 132),
    ),
    RoutinModel(
      title: 'خواندن کتاب',
      reminder: false,
      dayPerWeek: 5,
      color: const Color.fromARGB(255, 100, 90, 188),
    )
  ].obs;
  setRoutin(String title, bool reminder, int dayPerWeek, Color color) {
    routinList.add(RoutinModel(
        title: title,
        reminder: reminder,
        dayPerWeek: dayPerWeek,
        color: color));
    for (int n = 0; n < routinList.length; n++) {}
  }
}
