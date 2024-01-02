import 'package:get/get.dart';
import 'package:test_flutter_2/controllers/counter_controller.dart';

class MainController extends GetxController {
  //Demo
  CounterController counterController1 =
      Get.put(CounterController(), tag: 'logicController1');
}
