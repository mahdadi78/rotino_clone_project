import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rotino_clone_project/APIs/remote_services.dart';

class DateController extends GetxController {
  var weekDay = 8.obs;
  var isLoading = true.obs;
//#######################################
  var shanbe = false.obs;
  var shanbe1 = false.obs;
  var shanbe2 = false.obs;
  var shanbe3 = false.obs;
  var shanbe4 = false.obs;
  var shanbe5 = false.obs;
  var jome = false.obs;

  @override
  void onInit() {
    super.onInit();
    getWeekDay();
  }

  void getWeekDay() async {
    isLoading(true);

    try {
      isLoading(true);
      var date = await RemoteServices.fetchWeekDay();

      weekDay.value = date;
      daySetter();
    } finally {
      isLoading(false);
    }
  }

//todo weekDayNumber  set to home page    with my controller
  daySetter() {
    if (weekDay.value == 7) {
      shanbe.value = true;
    } else if (weekDay.value == 1) {
      shanbe1.value = true;
    } else if (weekDay.value == 2) {
      shanbe2.value = true;
    } else if (weekDay.value == 3) {
      shanbe3.value = true;
    } else if (weekDay.value == 4) {
      shanbe4.value = true;
    } else if (weekDay.value == 5) {
      shanbe5.value = true;
    } else if (weekDay.value == 6) {
      jome.value = true;
    }
  }

  Widget weekdayWidget(context, bool eachShanbe, String champ) {
    if (eachShanbe) {
      return Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text(champ, style: Theme.of(context).textTheme.labelLarge),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text(
          champ,
          style: Theme.of(context).textTheme.labelSmall,
        ),
      );
    }
  }

  Widget dateNumWidget(context, bool eachShanbe, String champ) {
    if (eachShanbe) {
      return Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text(champ, style: Theme.of(context).textTheme.labelLarge),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text(
          champ,
          style: Theme.of(context).textTheme.labelSmall,
        ),
      );
    }
  }
}
