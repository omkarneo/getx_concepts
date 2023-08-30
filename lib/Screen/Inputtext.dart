import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_concept/controller.dart';

class InputTextField extends StatefulWidget {
  const InputTextField({super.key});

  @override
  State<InputTextField> createState() => _InputTextFieldState();
}

class _InputTextFieldState extends State<InputTextField> {
  @override
  void initState() {
    super.initState();
    text.text = controller.data.value;
  }

  TextEditingController text = TextEditingController();
  final InputTextController controller = Get.put(InputTextController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Text Form Field")),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Obx(() => Text(
              "Text is ${controller.data}",
              style: const TextStyle(fontSize: 20),
            )),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: text,
            decoration: InputDecoration(border: OutlineInputBorder()),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              controller.adddata(text.text.trim());
            },
            child: const Text("Submit"))
      ]),
    );
  }
}
