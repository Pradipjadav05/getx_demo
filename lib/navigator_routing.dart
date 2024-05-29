import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_demo/screen_one.dart';

class NavigatorAndRouting extends StatefulWidget {
  const NavigatorAndRouting({super.key});

  @override
  State<NavigatorAndRouting> createState() => _NavigatorAndRoutingState();
}

class _NavigatorAndRoutingState extends State<NavigatorAndRouting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigator and Routing Demo"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => const ScreenOne(),));
                Get.to(ScreenOne(
                  name: "Pradip",
                ));
              },
              child: const Text("Go to Next Screen"),
            ),
            TextButton(
              onPressed: () {
                // using routing getX
                Get.toNamed("/screenOne");
              },
              child: const Text("Routes to Navigate next"),
            ),
          ],
        ),
      ),
    );
  }
}
