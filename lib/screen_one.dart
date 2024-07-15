import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx/counter_controller.dart';
import 'package:getx/opacity_controller.dart';
import 'package:getx/screentwo.dart';

import 'opacity_controller.dart';
class Screenone extends StatefulWidget {
  const Screenone({super.key});

  @override
  State<Screenone> createState() => _ScreenoneState();
}

class _ScreenoneState extends State<Screenone> {
  CounterController controller = Get.put(CounterController());
  OpacityController opacitycontroller = Get.put(OpacityController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('first screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Container(
            color: Colors.amber.withOpacity(opacitycontroller.opacity.value),
            height: Get.height * .2,
            width: Get.width * .7,
            child: Center(child: Text('Container 1')),
          ),
          ),
          Obx(() =>  Slider(value: opacitycontroller.opacity.value, onChanged: (value){
            opacitycontroller.changeopacity(value);
          }),),
          SizedBox(
            height: 40,
          ),
          Obx(() => Text(controller.counter.toString())),
          Center(
            child: TextButton(onPressed: (){
              //Get.to(screentwo());
              Get.toNamed('/screentwo', arguments: [
                'farwa khan'
              ]);
            }, child: Text('Go to screen two')),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          controller.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
