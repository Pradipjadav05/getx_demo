import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen Two"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Get.arguments[0]),
            const Text("Screen Two"),

            TextButton(
              onPressed: () {
               // Navigator.pop(context);
                Get.back();
              },
              child: const Text("Go Back"),
            ),

            // it will back two screen
            TextButton(
              onPressed: () {
                Get.back();
                Get.back();
              },
              child: const Text("Go home"),
            ),
          ],
        ),
      ),
    );
  }
}
