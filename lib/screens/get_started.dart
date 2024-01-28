import 'package:dating_app/widgets/button_widget.dart';
import 'package:dating_app/widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(children: [
          //Image(image: AssetImage("assets/cover-getstarted.jpg")),
          Image.asset(
            "assets/cover-getstarted.jpg",
            fit: BoxFit.fitWidth,
          ),
          Container(
            width: 200,
            child: TextWidget(
                text: "Embrace \n A New Way \n Of Dating",
                color: Colors.black54,
                fontSize: 40,
                fontFamily: "Times New Roman",
                fontWeight: FontWeight.w900,
                textAlign: TextAlign.left),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              width: 300,
              child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  TextWidget(
                    text:
                        "We combine cutting edge technologies with a modern approach to match making",
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: "Times New Roman",
                    fontWeight: FontWeight.normal,
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 20),
                  ButtonWidget(
                      widget: TextWidget(
                          text: "Get Started",
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: "Montsserrat",
                          fontWeight: FontWeight.normal,
                          textAlign: TextAlign.center),
                      color: Colors.orange,
                      radius: 200,
                      width: 50)
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
