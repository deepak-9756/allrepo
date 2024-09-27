import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Getexample extends GetxController {
  RxInt count = 0.obs;
  increment(val) {
    count = val + 1;
    update();
  }

  decrement(val) {
    count = val - 1;
    update();
  }
}
