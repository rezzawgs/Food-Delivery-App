
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/configs/color_utils.dart';
import 'package:food_delivery_app/configs/size_configs.dart';
import 'package:food_delivery_app/configs/size_utils.dart';
import 'package:food_delivery_app/controllers/OnBoardingScreen.dart';
import 'package:food_delivery_app/globalWidgets/WidgetView.dart';

class DotsIndicator extends WidgetView<Onboardingscreen, OnboardingscreenState> {
  DotsIndicator(OnboardingscreenState state, {Key? key}): super(state, key:key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: state.dataPage.asMap().entries.map((entry) {
        return GestureDetector(
          onTap: () => {
            state.setState(() {
              state.currentPge = entry.key;
              state.tabController?.animateTo(state.currentPge, duration: const Duration(seconds: 1));
            })
          },
          child: Container(
            width: state.currentPge == entry.key ? getWidth(16) : getWidth(8.0),
            height: 8.0,
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(kRadiusMd),
                color: allTimeBlack
            ),
          ),
        );
      }).toList(),
    );
  }
}