import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_demo/counter_controller.dart';

/*
* Without State Management
*
* */

/*
class CounterExample extends StatefulWidget {
  const CounterExample({super.key});

  @override
  State<CounterExample> createState() => _CounterExampleState();
}

class _CounterExampleState extends State<CounterExample> {

  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Example"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(count.toString(), style: const TextStyle(fontSize: 60)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          count++;
          setState(() {

          });
        },
      ),
    );
  }
}
*/

class CounterExample extends StatefulWidget {
  const CounterExample({super.key});

  @override
  State<CounterExample> createState() => _CounterExampleState();
}

class _CounterExampleState extends State<CounterExample> {
  // create controller and initialize. it will create and initialize globally at run app.
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Example"),
        centerTitle: true,
      ),
      body: Center(
        // this will listen the Observable data
        child: Obx((){
          return Text(controller.count.toString(), style: const TextStyle(fontSize: 60));
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.incrementCounter();
        },
      ),
    );
  }
}
