import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:get_x_demo/example_two_controller.dart';

class ExampleTwo extends StatefulWidget {
  const ExampleTwo({super.key});

  @override
  State<ExampleTwo> createState() => _ExampleTwoState();
}

class _ExampleTwoState extends State<ExampleTwo> {


  final ExampleTwoController controller = Get.put(ExampleTwoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Example Two"),
        centerTitle: true,
      ),
      body: Center(
        child: Obx((){
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.lightBlueAccent.withOpacity(controller.opacity.value),
                height: Get.height * 0.2,
                width: Get.width * 0.2,
              ),
              Slider(
                min: 0.1,
                value: controller.opacity.value,
                onChanged: (value) {
                  controller.setOpacity(value);
                },
              )
            ],
          );
        }),
      ),
    );
  }
}
