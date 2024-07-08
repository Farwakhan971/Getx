import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class screentwo extends StatefulWidget {
  const screentwo({super.key});

  @override
  State<screentwo> createState() => _screentwoState();
}

class _screentwoState extends State<screentwo> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         // Text(Get.arguments[0]),
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr) ,
          ),
          Row(
            children: [
              OutlinedButton(onPressed: (){
                Get.updateLocale(const Locale('en', 'US'));
              }, child: const Text('English')),
              const SizedBox(
                width: 20,
              ),
              OutlinedButton(onPressed: (){
                 Get.updateLocale(const Locale('ur', 'PK'));
              }, child: const Text('Urdu')),
            ],
          ),
          Center(
            child: TextButton(onPressed: (){
              Get.back();
            }, child: const Text('Go back')),
          )
        ],
      ),
    );
  }
}
