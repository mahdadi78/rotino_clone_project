import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //   DateController dateController = Get.put(DateController());
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
                child: const Row(
                  children: [],
                ),
              )),
          Expanded(flex: 10, child: Container()),
        ],
      ),
    );
  }
}
