import 'package:flutter/material.dart';
import 'package:food_delivery_app/configs/color_utils.dart';
import 'package:food_delivery_app/configs/size_configs.dart';
import 'package:food_delivery_app/configs/size_utils.dart';
import 'package:food_delivery_app/controllers/OnBoardingScreen.dart';
import 'package:food_delivery_app/globalWidgets/ButtonImgNoFill.dart';
import 'package:food_delivery_app/globalWidgets/WidgetView.dart';
import 'package:food_delivery_app/views/Onboarding/content_view.dart';
import 'package:food_delivery_app/views/Onboarding/dotsindicator.dart';

class OnboardingView extends WidgetView<Onboardingscreen, OnboardingscreenState> {
  OnboardingView(OnboardingscreenState state, {Key? key}): super(state, key:key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SafeArea(
            child: Container(
                color: Colors.white,
                child: Stack(
                  children: [
                      Positioned.fill(
                        child: DefaultTabController(
                          length: state.dataPage.length,
                          child: Scaffold(
                            backgroundColor: primary,
                            body: TabBarView(
                                controller: state.tabController,
                                children: state.dataPage.map((e) => <Widget> [
                                  ContentView(state, e)
                                ] ).expand((element) => element).toList()
                            ),
                          ),
                        )
                      ),
                      Positioned(
                        right:0,
                        bottom: 0,
                        child: Image.asset("assets/images/onboarding_bg_button.png", height: (height/5)),
                      ),
                      Positioned(
                        bottom : (height/12),
                        left: getWidth(marginMd),
                        right: getWidth(marginMd),
                        child:
                        Row(
                          children: [
                            DotsIndicator(state),
                            Expanded(child: Container(
                              alignment: Alignment.centerRight,
                              child: ButtonImgNoFill(
                                imagename: "arrow-right",
                                width: 60,
                                color: allTimeBlack,
                                pad: const EdgeInsets.all(7),
                                onTap: state.nextHandler,
                              ),
                            ))
                          ],
                        )
                      )
                  ])
            )
        )
    );
  }
}
