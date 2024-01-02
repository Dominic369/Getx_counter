import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:test_flutter_2/controllers/counter_controller.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final CounterController counterController = Get.put(CounterController());

    return GetBuilder<CounterController>(
      init: CounterController(),
      dispose: (state) {
        //state.controller?.logicController1.onClose();
        //state.controller?.logicController2.onClose();
      },
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text('GetX Demo'),
          ),
          body: Center(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  /*
                  Obx(() => Text(
                        '${controller.logicController1}',
                        style: Theme.of(context).textTheme.headlineMedium,
                      )),
                  Obx(() => Text(
                        '${controller.logicController2}',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ))
                      */
                  Text(
                    '${controller.logicController1}',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    '${controller.logicController2}',
                    style: Theme.of(context).textTheme.headlineMedium,
                  )
                ],
              ),
            ),
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //---------------ปุ่มลบ---------------
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  FloatingActionButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Icon(Icons.remove),
                    onPressed: controller.decrementCounter1,
                  ),
                  Gap(16),
                  FloatingActionButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Icon(Icons.remove),
                    onPressed: controller.decrementCounter2,
                  ),
                ],
              ),
              //---------------ปุ่มรีเซ็ต---------------
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  FloatingActionButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Icon(Icons.autorenew),
                    onPressed: controller.resetCounter1,
                  ),
                  Gap(16),
                  FloatingActionButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Icon(Icons.autorenew),
                    onPressed: controller.resetCounter2,
                  ),
                ],
              ),
              //---------------ปุ่มบวก---------------
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  FloatingActionButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Icon(Icons.add),
                    onPressed: controller.incrementCounter1,
                  ),
                  Gap(16),
                  FloatingActionButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Icon(Icons.add),
                    onPressed: controller.incrementCounter2,
                    tooltip: 'increment',
                  ),
                ],
              ),
            ],
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
        );
      },
    );
  }
}
