import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Languages.dart';
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
      locale: Locale('en', 'US'),
      translations: Language(),
     // fallbackLocale: Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
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