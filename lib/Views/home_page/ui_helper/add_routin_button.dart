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
                      routinName(context),
                      weeklyReapid(textEditingController, context),
                      reminder(context)
                    ],
                  ),
                ),
              );
            },
          );
        },
        icon: const Icon(Icons.add_box_outlined));
  }

  Widget reminder(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border:
                  Border.all(color: Theme.of(context).unselectedWidgetColor)),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (valu) {}),
                    Text(
                      'یادآور',
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        '18:30',
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {}, child: const Text('تغییر زمان')),
                  ],
                ),
              ],
            ),
          )),
    );
  }

  Widget weeklyReapid(
      TextEditingController textEditingController, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextFormField(
          readOnly: true,
          controller: textEditingController,
          decoration: InputDecoration(
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                      color: Theme.of(context).unselectedWidgetColor)),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              icon: MenuAnchor(
                builder: (BuildContext context, MenuController controller,
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
                      textEditingController.text = '${index + 1}   روز';
                    },
                  ),
                ),
              ),
              labelText: 'تعداد روز در هفته'),
          canRequestFocus: false,
        ),
      ),
    );
  }

  Widget routinName(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextFormField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(
                color: Theme.of(context).unselectedWidgetColor,
              ),
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            labelText: 'نام روتین',
          ),
        ),
      ),
    );
  }
}
