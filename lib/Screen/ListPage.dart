import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_concept/controller.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final ListController listController = Get.put(ListController());
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("List Page")),
      body: Column(children: [
        Obx(() => SizedBox(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height - 100,
              child: ListView.builder(
                itemCount: listController.list.length,
                itemBuilder: (context, index) {
                  var dt = listController.list[index];
                  return ListTile(
                    title: Text("$dt  $index"),
                  );
                },
              ),
            )),
        // Row(
        //   children: [
        //     TextFormField(),
        //     ElevatedButton(onPressed: () {}, child: Icon(Icons.arrow_back))
        //   ],
        // )
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          listController.add("Hello");
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
