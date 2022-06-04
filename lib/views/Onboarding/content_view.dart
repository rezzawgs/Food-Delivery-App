import 'package:flutter/material.dart';
import 'package:food_delivery_app/configs/color_utils.dart';
import 'package:food_delivery_app/configs/size_configs.dart';
import 'package:food_delivery_app/configs/size_utils.dart';
import 'package:food_delivery_app/controllers/OnBoardingScreen.dart';
import 'package:food_delivery_app/globalWidgets/WidgetView.dart';

class ContentView extends WidgetView<Onboardingscreen, OnboardingscreenState> {
  const ContentView(OnboardingscreenState state, this.contentData, {Key? key}): super(state, key:key);

  final Map<String, dynamic> contentData;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Stack(
          children: [
            Positioned(
              top: 20,
              left:0,
              right:0,
              bottom: height/2 - 40,
              child: Image.asset("assets/images/${contentData['images']}.png", fit: BoxFit.fitHeight, alignment: Alignment.topLeft),
            ),
            Positioned(
              top: (height/2) - 10,
              left:0,
              right:0,
              child: Image.asset("assets/images/onboarding_bg.png", fit: BoxFit.fitWidth, alignment: Alignment.bottomCenter),
            ),
            Positioned(
              top: (height/2) + 20,
              left: getWidth(marginMd),
              right: getWidth(marginMd),
              bottom: 0,
              child:
              Column(
                children: [
                  Image.asset("assets/images/logo.png", width: getWidth(70), height: getHeight(70)),
                  SizedBox(height: getHeight(marginMd)),
                  Text(contentData['title'] ?? "-",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: getFont(font2XL)
                    ),
                  ),
                  SizedBox(height: getHeight(marginSm)),
                  Container(
                    padding: const EdgeInsets.only(left: marginMd, right: marginMd),
                    height: 80,
                    child: Text(contentData['description'] ?? "-",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: darkSecondaryTitle,
                          fontSize: getFont(fontMd)
                      ),
                    ),
                  ),
                  SizedBox(height: getHeight(marginSm)),
                ],
              )
            ),
          ]
    );
  }
}