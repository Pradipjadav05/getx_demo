import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_demo/screen_two.dart';

class ScreenOne extends StatefulWidget {
  String name;
  ScreenOne({super.key, this.name = ""});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen One"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.name),
            const Text("Screen One"),

            TextButton(
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => const ScreenOne(),));
                Get.to(const ScreenTwo(), arguments: ["pradip Jadav"]);
              },
              child: const Text("Go to Next Screen"),
            ),
            TextButton(
              onPressed: () {
                // Navigator.pop(context);
                Get.back();
              },
              child: const Text("Go Back"),
            ),
            TextButton(
              onPressed: () {
                // using routing getX
                Get.toNamed("/screenTwo", arguments: ["pradip Jadav"]);
              },
              child: const Text("Routes to Navigate next"),
            ),
          ],
        ),
      ),
    );
  }
}
