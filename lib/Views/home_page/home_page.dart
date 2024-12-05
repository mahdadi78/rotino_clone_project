import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rotino_clone_project/Controllers/date_controller.dart';
import 'package:rotino_clone_project/Controllers/routin_controller.dart';
import 'package:rotino_clone_project/Views/home_page/ui_helper/add_routin_button.dart';
import 'package:rotino_clone_project/Views/home_page/ui_helper/more_details_botton.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    DateController dateController = Get.put(DateController());
    RoutinController routinController = Get.put(RoutinController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('روتینو'),
        actions: const [
          AddRoutineBotton(),
          MoreDetailes(),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: dateWidget(context, dateController),
          ),
          Expanded(
            flex: 10,
            child: SizedBox(
              child: Obx(
                () => ReorderableListView(
                  children: <Widget>[
                    for (int index = 0;
                        index < routinController.routinList.length;
                        index += 1)
                      Padding(
                        key: Key('$index'),
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          tileColor: routinController.routinList[index].color,
                          title: Text(
                            routinController.routinList[index].title,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      ),
                  ],
                  onReorder: (int oldIndex, int newIndex) {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Obx dateWidget(BuildContext context, DateController controller) {
    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton.icon(
            onPressed: () {},
            label: Container(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border:
                    Border.all(width: 3, color: Theme.of(context).primaryColor),
              ),
              child: Text(
                'هفته قبل',
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
          ),
          const SizedBox(
            width: 40,
          ),
          controller.weekdayWidget(context, controller.shanbe.value, 'ش'),
          controller.weekdayWidget(context, controller.shanbe1.value, 'ی'),
          controller.weekdayWidget(context, controller.shanbe2.value, 'د'),
          controller.weekdayWidget(context, controller.shanbe3.value, 'س'),
          controller.weekdayWidget(context, controller.shanbe4.value, 'چ'),
          controller.weekdayWidget(context, controller.shanbe5.value, 'پ'),
          controller.weekdayWidget(context, controller.jome.value, 'ج'),
        ],
      ),
    );
  }
}
