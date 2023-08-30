import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_concept/Screen/Counter.dart';
import 'package:getx_concept/Screen/ListPage.dart';

import 'Screen/Inputtext.dart';
import 'controller.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CounterController count = Get.put(CounterController());
  final InputTextController text = Get.put(InputTextController());
  final ListController list = Get.put(ListController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Getx Concept")),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Obx(() => Text(
                "Count in Counter Page is ${count.count.value}",
                style: const TextStyle(fontSize: 20),
              )),
        ),
        Center(
          child: Obx(() => Text(
                "Text in Input Page is ${text.data.value}",
                style: const TextStyle(fontSize: 20),
              )),
        ),
        Center(
          child: Obx(() => Text(
                "Length of the List is ${list.list.length}",
                style: const TextStyle(fontSize: 20),
              )),
        ),
        Center(
            child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const CounterPage());
                },
                child: const Text("Counter App"))),
        Center(
            child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const InputTextField());
                },
                child: const Text("Text Form Field"))),
        Center(
            child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const ListPage());
                },
                child: const Text("List Page"))),
      ]),
    );
  }
}
