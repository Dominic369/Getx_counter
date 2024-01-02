import 'package:get/get.dart';
import 'package:test_flutter_2/models/counter_model.dart';

class CounterController extends GetxController {
  //var logicController1 = 0.obs;
  //var logicController2 = 0.obs;
  var logicController1 = CounterModel().counter.obs;
  var logicController2 = CounterModel().counter.obs;

  void incrementCounter1() {
    logicController1 = logicController1++;
    print('incrementCounter1 : $logicController1');
    update(); // use update() to update counter variable on UI when increment be called
  }

  void incrementCounter2() {
    logicController2 = logicController2++;
    print('incrementCounter2 : $logicController2');
    update();
  }

  void decrementCounter1() {
    if (logicController1 != 0) {
      logicController1 = logicController1--;
      print('decrementCounter1 : $logicController1');
      update();
    }
  }

  void decrementCounter2() {
    if (logicController2 != 0) {
      logicController2 = logicController2--;
      print('decrementCounter2 : $logicController2');
      update();
    }
  }

  void resetCounter1() {
    logicController1.value = 0;
    print('resetCounter1 : $logicController1');
    update();
  }

  void resetCounter2() {
    logicController2.value = 0;
    print('resetCounter2 : $logicController2');
    update();
  }
}
