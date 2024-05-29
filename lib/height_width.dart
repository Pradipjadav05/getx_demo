import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeightWidth extends StatelessWidget {
  const HeightWidth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Height & Width"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Using MediaQuery
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 1,
            color: Colors.red,
          ),
          // Using GetX
          Container(
            height: Get.height * 0.2,
            width: Get.width * 0.4,
            color: Colors.green,
          ),
          Text("Current root - ${Get.currentRoute}"),
          Text("Previous root - ${Get.previousRoute}"),
        ],
      ),
    );
  }
}
