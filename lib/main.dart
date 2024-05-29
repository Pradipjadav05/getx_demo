import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_demo/home_screen.dart';
import 'package:get_x_demo/languages.dart';
import 'package:get_x_demo/navigator_routing.dart';
import 'package:get_x_demo/screen_one.dart';
import 'package:get_x_demo/screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter getX Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        // useMaterial3: true,
      ),
      themeMode: ThemeMode.light,
      home: const HomeScreen(),
      getPages: [
        GetPage(name: "/", page: () => const HomeScreen()),
        GetPage(name: "/navigatorRoutingScreen", page: () => const NavigatorAndRouting()),
        GetPage(name: "/screenOne", page: () => ScreenOne()),
        GetPage(name: "/screenTwo", page: () => const ScreenTwo()),
      ],

      locale: const Locale('en', 'US'),
      translations: Language(),
      fallbackLocale: const Locale('en', 'US'),

    );
  }
}
