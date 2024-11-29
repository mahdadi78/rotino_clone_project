import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rotino_clone_project/Controllers/date_controller.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    DateController controller = Get.put(DateController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('روتینو'),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.add_box_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.amber,
              child: Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    controller.weekdayWidget(
                        context, controller.shanbe.value, 'ش'),
                    controller.weekdayWidget(
                        context, controller.shanbe1.value, 'ی'),
                    controller.weekdayWidget(
                        context, controller.shanbe2.value, 'د'),
                    controller.weekdayWidget(
                        context, controller.shanbe3.value, 'س'),
                    controller.weekdayWidget(
                        context, controller.shanbe4.value, 'چ'),
                    controller.weekdayWidget(
                        context, controller.shanbe5.value, 'پ'),
                    controller.weekdayWidget(
                        context, controller.jome.value, 'ج'),
                  ],
                ),
              ),
            ),
          ),
          Expanded(flex: 10, child: Container()),
        ],
      ),
    );
  }
}
