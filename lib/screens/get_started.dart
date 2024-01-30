import 'package:dating_app/screens/profile_page.dart';
import 'package:dating_app/widgets/button_widget.dart';
import 'package:dating_app/widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  void navigateToProfile(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Profile()),
    );
  }


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
                color: Colors.black87,
                fontSize: 40,
                fontFamily: "Times New Roman",
                fontWeight: FontWeight.w900,
                textAlign: TextAlign.left),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              width: 150,
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

                  GestureDetector(
                    onTap: () => navigateToProfile(context),
                    child: ButtonWidget(
                      widget: TextWidget(
                          text: "Get Started",
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: "Montsserrat",
                          fontWeight: FontWeight.normal,
                          textAlign: TextAlign.center),
                      color: Colors.orange,
                      radius: 10,
                      width: 10,
                      icon: Icons.arrow_forward,
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
