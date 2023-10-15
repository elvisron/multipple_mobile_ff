import 'package:flutter/material.dart';
import 'package:multipple/login.dart';

import 'indicator.dart';

class IntroSlider extends StatefulWidget {

  @override
  _IntroSliderState createState() => _IntroSliderState();

}

class _IntroSliderState extends State<IntroSlider> {

  //Controller for the PageView
  PageController controller= PageController();

  final title = ['The only learning platform you need.',
    'All you can learn at your fingertips at a click.', 'Affordable with amazing offers and live sessions.'];
  final description = ['Your sole destination for acquiring knowledge, '
      'skills, and growth, tailored to meet all your educational aspirations.', 'Unlock a world of limitless knowledge '
      'with a single click, as our platform brings an extensive array of learning opportunities '
      'right to your fingertips.', 'Elevate your journey further '
      'through engaging live sessions, where experts illuminate your path to mastery in real-time.'];
  final images = [
    'assets/grey_circle.png',
    'assets/grey_circle.png',
    'assets/grey_circle.png'
  ];

  int numberOfPages=3;
  int currentPage=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
          controller: controller,
          onPageChanged: (index){
            setState(() {
              currentPage=index;
            });
          },
          itemCount: numberOfPages,
          itemBuilder: (BuildContext context, int index) {
            return EachPage(title[index], description[index], images[index]);
          },
        ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Flexible(
                    child: Indicator(
                      controller: controller,
                      pageCount: numberOfPages,
                    ),
                  ),
                  Row(
                      children: <Widget>[
                        Expanded(
                          child: (currentPage==numberOfPages-1)?
                          Padding(
                              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                              child:
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor: Colors.black87,
                                    padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    textStyle: const TextStyle(fontSize: 16)),
                                child: const Text('Get Started'),
                                onPressed: () {
                                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const Login()), (_) => false);
                                },
                              )):
                          Padding(
                              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                              child:
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor: Colors.black87,
                                    padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    textStyle: const TextStyle(fontSize: 16)),
                                child: const Text('Next'),
                                onPressed: () {
                                  controller.jumpToPage(currentPage+1);
                                },
                              )),
                        )
                      ]
                  ),
                ]
            ),
          )
        ],
      ),
    );
  }
}

class EachPage extends StatelessWidget {

  final String title;
  final String description;
  final String image;

  EachPage(this.title, this.description, this.image);

  @override
  Widget build(BuildContext context) {

    return Padding(padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 60,),
          Text(title,style: const TextStyle(fontSize: 32)),
          const SizedBox(height: 10,),
          Text(description, style: const TextStyle(fontSize: 16, color: Colors.black45)),
          const SizedBox(height: 40,),
          Image.asset(image)
        ],
      ),
    );
  }
}