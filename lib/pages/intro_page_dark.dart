import 'package:flutter/material.dart';

import 'intro_app_strings.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);
  static const String id = 'intro_page';

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  int _pageIndex = 0;
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          _pageIndex != 2 ? TextButton(
            onPressed: (){
              setState(() {
                _pageIndex = 2;
              });
              _controller.animateToPage(_pageIndex, duration: const Duration(milliseconds: 500), curve: Curves.easeInCubic);
            },
            child: const Text('Skip', style: TextStyle(color: Colors.green, fontWeight: FontWeight.w500, fontSize: 20, letterSpacing: 1.1)),
          ) : TextButton(
            onPressed: (){},
            child: const Text('Next', style: TextStyle(color: Colors.green, fontWeight: FontWeight.w500, fontSize: 20, letterSpacing: 1.1)),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          children: [
            PageView.builder(
              controller: _controller,
              onPageChanged: (index){
                setState(() {_pageIndex = index;});},
              itemCount: 3,
              itemBuilder: (context, index) {
                return _page('assets/intro_page/dark_mood/img_$index.png', Strings.titlesWithContents.keys.toList()[index], Strings.titlesWithContents.values.toList()[index]);
              },
            ),
            // Container(
            //   height: MediaQuery.of(context).size.height,
            //   width: MediaQuery.of(context).size.width,
            //   alignment: Alignment.bottomCenter,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: _buildIndicator(),
            //   ),
            // )
            indicator(),
          ],
        ),
      ),
    );
  }

  Widget _page(String media, String title, String subtitle){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: Image(image: AssetImage(media)),
          ),
          const SizedBox(height: 30),
          Text(title, style: const TextStyle(color: Colors.green, fontSize: 30, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          Text(subtitle, style: const TextStyle(color: Colors.white, fontSize: 20), textAlign: TextAlign.center)
        ],
      ),
    );
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 6,
      width: isActive ? 30 : 6,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(5)
      ),
    );
  }
  List<Widget> _buildIndicator(){
    List<Widget> indicators = [];
    for (int i=0; i<3; i++){
      if(_pageIndex==i){
        indicators.add(_indicator(true));
      } else{
        indicators.add(_indicator(false));
      }
    }
    return indicators;
  }

  Widget dot(int index) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 6),
      duration: const Duration(milliseconds: 500),
      height: 6,
      width: index == _pageIndex ? 30 : 6,
      decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(3)
      ),
    );
  }
  Widget indicator(){
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: const EdgeInsets.only(bottom: 60),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            dot(0),
            dot(1),
            dot(2),
          ],
        ),
      ),
    );
  }
}
