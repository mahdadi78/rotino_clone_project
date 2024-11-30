import 'package:flutter/material.dart';

class AddRoutineBotton extends StatelessWidget {
  const AddRoutineBotton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();

    return IconButton(
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Scaffold(
                appBar: AppBar(
                  centerTitle: true,
                  title: const Text(
                    'ساخت روتین جدید',
                  ),
                  elevation: 0,
                ),
                body: SizedBox.expand(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 16),
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              labelText: 'نام روتین',
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 0),
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextFormField(
                            readOnly: true,
                            controller: textEditingController,
                            decoration: InputDecoration(
                                border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                                icon: MenuAnchor(
                                  builder: (BuildContext context,
                                      MenuController controller,
                                      Widget? child) {
                                    return IconButton(
                                      color: Colors.black,
                                      onPressed: () {
                                        if (controller.isOpen) {
                                          controller.close();
                                        } else {
                                          controller.open();
                                        }
                                      },
                                      icon: const Icon(Icons.more_horiz),
                                      tooltip: 'Show menu',
                                    );
                                  },
                                  menuChildren: List<MenuItemButton>.generate(
                                    7,
                                    (int index) => MenuItemButton(
                                      child: Text('${index + 1}   روز'),
                                      onPressed: () {
                                        textEditingController.text =
                                            '${index + 1}   روز';
                                      },
                                    ),
                                  ),
                                ),
                                labelText: 'تعداد روز در هفته'),
                            canRequestFocus: false,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        icon: const Icon(Icons.add_box_outlined));
  }
}
