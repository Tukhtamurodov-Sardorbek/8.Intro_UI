import 'package:flutter/material.dart';

class FoodDelivery extends StatefulWidget {
  const FoodDelivery({Key? key}) : super(key: key);
  static const String id = 'simpleUI';

  @override
  _FoodDeliveryState createState() => _FoodDeliveryState();
}

class _FoodDeliveryState extends State<FoodDelivery> {
  Map<String, String> texts = {'Blah blah blah':'blah blah blah',
    'All Your Favourite Dishes' : 'Order from your nearby best restaurant in the town. You can easily order from anywhere, anytime',
    'Unknown' : 'blah blah blah ...'};
  int _pageIndex = 0;

  void _getStarted(BuildContext ctx) {
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(50),
              topLeft: Radius.circular(50),
            )
        ),
        barrierColor: Colors.transparent,
        isScrollControlled: true,
        elevation: 5,
        context: ctx,
        builder: (ctx) => Padding(
          /// Raise text field over keyboard
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            padding: const EdgeInsets.only(top: 40, left: 25, right: 25),
            height: MediaQuery.of(context).size.height * 0.75,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Create an account', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 10),
                  const Text('Sign up to continue', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),),
                  const SizedBox(height: 30),
                  const Text('Name'),
                  const SizedBox(height: 20),
                  const TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)
                      ),
                      hintText: 'Davin Wong',
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text('Email'),
                  const SizedBox(height: 20),
                  const TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)
                        ),
                        hintText: 'davin.wong@mail.com',
                        suffixIcon: Icon(Icons.check_circle_outline, color: Colors.grey)
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text('PASSWORD'),
                  const SizedBox(height: 20),
                  const TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)
                        ),
                        hintText: '******',
                        suffixIcon: Icon(Icons.visibility, color: Colors.grey)
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Center(child: MaterialButton(
                      onPressed: () {},
                      minWidth: MediaQuery.of(context).size.width,
                      height: 50,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      color: const Color(0xff02cc7a),
                      child: const Text('Get Started', style: TextStyle(color: Colors.white, fontSize: 20), textAlign: TextAlign.center,)
                  )),
                  const SizedBox(height: 20),
                  Center(
                    child: RichText(
                      text: const TextSpan(
                          text: 'Already have an account?',
                          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
                          children: [
                            TextSpan(text: ' Login', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600)),
                          ]
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  void _login(BuildContext ctx) {
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(50),
              topLeft: Radius.circular(50),
            )
        ),
        barrierColor: Colors.transparent,
        isScrollControlled: true,
        elevation: 5,
        context: ctx,
        builder: (ctx) => Padding(
          /// Raise text field over keyboard
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            padding: const EdgeInsets.only(top: 40, left: 25, right: 25),
            height: MediaQuery.of(context).size.height * 0.65,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Sign in Account', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 10),
                  const Text('Sign in to continue', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),),
                  const SizedBox(height: 30),
                  const Text('Email'),
                  const SizedBox(height: 20),
                  const TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)
                        ),
                        hintText: 'davin.wong@mail.com',
                        suffixIcon: Icon(Icons.check_circle_outline, color: Colors.grey)
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text('PASSWORD'),
                  const SizedBox(height: 20),
                  const TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)
                        ),
                        hintText: '******',
                        suffixIcon: Icon(Icons.visibility, color: Colors.grey)
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Center(child: MaterialButton(
                      onPressed: () {},
                      minWidth: MediaQuery.of(context).size.width,
                      height: 50,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      color: const Color(0xff3b3b3b),
                      child: const Text('Sign in', style: TextStyle(color: Colors.white, fontSize: 20), textAlign: TextAlign.center,)
                  )),
                  const SizedBox(height: 20),
                  Center(
                    child: RichText(
                      text: const TextSpan(
                          text: 'Don\'t have an account?',
                          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
                          children: [
                            TextSpan(text: ' Sign up', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600)),
                          ]
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xfffa6c3a),
        body: Stack(
          children: [
            /// Your Logo
            Container(
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.only(top:100),
              child: const Text('Your Logo', style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.only(bottom: 280),
              child: /// DOTS
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for(int i=0; i<texts.length;i++) Icon(Icons.brightness_1_rounded, color: i==_pageIndex?Colors.white:Colors.grey.shade200, size: i==_pageIndex? 10 : 6),
                ],
              ),
            ),

            /// PageView
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: PageView.builder(
                onPageChanged: (index){
                  setState(() {_pageIndex = index;});},
                itemCount: texts.length,
                itemBuilder: (context, index){
                  return _pages(texts.keys.toList()[index], texts.values.toList()[index]);
                },
              ),
            ),
            /// Buttons
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Color(0xfffb8a60),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50),
                    )
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 80, left: 30, right: 30, bottom: 30),
                      child: MaterialButton(
                        onPressed: () => _getStarted(context),
                        color: const Color(0xff02cc7a),
                        minWidth: MediaQuery.of(context).size.width,
                        height: 55,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Text('Get Started', style: TextStyle(color: Colors.white, fontSize: 20), textAlign: TextAlign.center,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
                      child: MaterialButton(
                        onPressed: () => _login(context),
                        color: const Color(0xff3b3b3b),
                        minWidth: MediaQuery.of(context).size.width,
                        height: 55,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Text('Login', style: TextStyle(color: Colors.white, fontSize: 20), textAlign: TextAlign.center,),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
    );
  }

  Widget _pages(String _title, String _subtitle){
    return PageView(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_title, style: const TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
              const SizedBox(height: 20),
              Text(_subtitle, style: const TextStyle(color: Colors.white, fontSize: 18), textAlign: TextAlign.center,),
            ],
          ),
        )
      ],
    );
  }


}
