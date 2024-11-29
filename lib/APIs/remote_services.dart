import 'package:http/http.dart' as http;
import 'package:rotino_clone_project/Models/time_model.dart';

class RemoteServices {
  static var client1 = http.Client();
  static var client2 = http.Client();

  static Future<int> fetchDayNumber() async {
    var response = await client1.get(Uri.parse('https://api.keybit.ir/time/'));

    if (response.statusCode == 200) {
      var jsonString = response.body;
      // print(jsonString);
      var fullBody = timeFromJson(jsonString);
      return int.parse(fullBody.date.day.number.en);
    } else {
      return 0;
    }
  }

  static Future<int> fetchWeekDay() async {
    var response = await client1.get(Uri.parse('https://api.keybit.ir/time/'));

    if (response.statusCode == 200) {
      var jsonString = response.body;
      // print(jsonString);
      var fullBody = timeFromJson(jsonString);
      return int.parse(fullBody.date.weekday.number.en);
    } else {
      return 9;
    }
  }
}
