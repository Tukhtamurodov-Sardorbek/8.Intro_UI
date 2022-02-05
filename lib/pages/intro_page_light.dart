import 'package:flutter/material.dart';

import 'intro_app_strings.dart';

class IntroLight extends StatefulWidget {
  const IntroLight({Key? key}) : super(key: key);
  static const String id  = 'intro_light_page';
  @override
  _IntroLightState createState() => _IntroLightState();
}

class _IntroLightState extends State<IntroLight> {
  int _pageIndex = 0;
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: Stack(
            children: [
              PageView.builder(
                controller: _controller,
                onPageChanged: (index){setState(() {_pageIndex = index;});},
                itemCount: Strings.titlesWithContents.length,
                itemBuilder: (context, index){
                  return _page(Strings.titlesWithContents.keys.toList()[index], Strings.titlesWithContents.values.toList()[index], 'assets/intro_page/light_mood/img_$index.png');
                },
              ),
              indicator(),
              Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.bottomRight,
                  padding: const EdgeInsets.only(bottom: 30, right: 10),
                  child: TextButton(
                    child: Text(
                      _pageIndex != 2 ? 'Skip' : 'Next', style: const TextStyle(color: Colors.red),),
                    onPressed: (){
                      _pageIndex != 2 ? _controller.animateToPage(2, duration: const Duration(milliseconds: 500), curve: Curves.easeInCubic)
                          : Navigator.pop(context);
                    },
                  )
              ),
            ],
          )

      ),
    );
  }

  Widget _page(String title, String subtitle, String mediaPath){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(title, style: const TextStyle(color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),),
        const SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Text(subtitle, style: const TextStyle(color: Colors.grey, fontSize: 18), textAlign: TextAlign.center),
        ),
        Image(image: AssetImage(mediaPath), height: 250, width: MediaQuery.of(context).size.width),
      ],
    );
  }

  Widget _dot(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      margin: const EdgeInsets.only(right: 6),
      height: 6,
      width: index == _pageIndex ? 28 : 6,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
  Widget indicator() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: const EdgeInsets.only(bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _dot(0), _dot(1), _dot(2)
          ],
        ),
      ),
    );
  }
}
