import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Stack(
        children: [
          PageView(
            children: [
              IntroPage('The only learning platform you need.','Your sole destination for acquiring knowledge, '
                  'skills, and growth, tailored to meet all your educational aspirations.','assets/grey_circle.png'),
              IntroPage('All you can learn at your fingertips at a click.','Unlock a world of limitless knowledge '
                  'with a single click, as our platform brings an extensive array of learning opportunities '
                  'right to your fingertips.','assets/grey_circle.png'),
              IntroPage('Affordable with amazing offers and live sessions.','Elevate your journey further '
                  'through engaging live sessions, where experts illuminate your path to mastery in real-time.',
                  'assets/grey_circle.png'),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
                children: <Widget>[
                  Expanded(
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                          child:
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.black87,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                textStyle: const TextStyle(fontSize: 16)),
                            child: const Text('Get Started'),
                            onPressed: () {

                            },
                        )),
                  ),
                ]
            ),
          )
        ],
      )
    );
  }

}

class IntroPage extends StatelessWidget {

  String imagePath;
  String title;
  String description;

  IntroPage(this.title, this.description,this.imagePath,{super.key});

  @override
  Widget build(BuildContext context) {

    return
      Padding(padding: const EdgeInsets.fromLTRB(15, 20, 20, 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 60,),
            Text(title,style: const TextStyle(fontSize: 32)),
            const SizedBox(height: 10,),
            Text(description, style: const TextStyle(fontSize: 16, color: Colors.black45)),
            const SizedBox(height: 40,),
            Image.asset(imagePath)
          ],
        ),
      );
  }

}