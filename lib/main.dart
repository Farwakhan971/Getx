import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/screentwo.dart';
import 'screen_one.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/screenone',
      getPages: [
        GetPage(name: '/screenone', page:()  => Screenone()),
        GetPage(name: '/screentwo', page: () => screentwo()),
      ],
    );
  }
}