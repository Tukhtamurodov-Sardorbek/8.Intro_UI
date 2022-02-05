import 'package:extra_ui/home_page.dart';
import 'package:extra_ui/pages/food_delivery.dart';
import 'package:extra_ui/pages/intro_page_dark.dart';
import 'package:extra_ui/pages/intro_page_light.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        IntroPage.id: (context) => const IntroPage(),
        IntroLight.id: (context) => const IntroLight(),
        FoodDelivery.id: (context) => const FoodDelivery(),
      },
    );
  }
}