import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs;
  increment() => count.value++;
  decrement() => count.value--;
  reset() => count.value = 0;
}

class InputTextController extends GetxController {
  var data = "".obs;
  adddata(String val) {
    data.value = val;
  }
}

class ListController extends GetxController {
  var list = [].obs;
  add(val) {
    list.add(val);
  }
}
