import 'package:extra_ui/pages/food_delivery.dart';
import 'package:extra_ui/pages/intro_page_dark.dart';
import 'package:extra_ui/pages/intro_page_light.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = 'home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<String, String> pages = {
    IntroPage.id: 'Intro Page Dark',
    IntroLight.id: 'Intro Page Light',
    FoodDelivery.id: 'Food Delivery'
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text('Intro UI', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
        centerTitle: true,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemCount: pages.length,
          itemBuilder: (context, index) {
            return _card(index + 1, pages.values.toList()[index],
                pages.keys.toList()[index]);
          },
        ),
      ),
    );
  }

  Widget _card(int number, String name, String id) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: ListTile(
      onTap: () {
        Navigator.of(context).pushNamed(id);
        },
        contentPadding: const EdgeInsets.all(0),
        minVerticalPadding: 10,
        minLeadingWidth: 10,
        leading: Text(number.toString(),
            style: const TextStyle(
                fontWeight: FontWeight.bold, letterSpacing: 1.5, fontSize: 16)),
        title: Center(
            child: Text(name,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, letterSpacing: 1.5, fontSize: 19),
                textAlign: TextAlign.center
            )
        ),
        selectedColor: Colors.blueGrey,
      )
    );
  }
}