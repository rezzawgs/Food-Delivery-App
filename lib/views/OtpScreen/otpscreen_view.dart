import 'package:flutter/material.dart';
import 'package:food_delivery_app/configs/color_utils.dart';
import 'package:food_delivery_app/configs/size_configs.dart';
import 'package:food_delivery_app/configs/size_utils.dart';
import 'package:food_delivery_app/controllers/Categories.dart';
import 'package:food_delivery_app/controllers/OtpScreen.dart';
import 'package:food_delivery_app/globalWidgets/ButtonFill.dart';
import 'package:food_delivery_app/globalWidgets/ButtonNoFill.dart';
import 'package:food_delivery_app/globalWidgets/FloatingLogo.dart';
import 'package:food_delivery_app/globalWidgets/Header.dart';
import 'package:food_delivery_app/globalWidgets/WidgetView.dart';
import 'package:food_delivery_app/views/OtpScreen/otpfield.dart';

class OtpScreenView extends WidgetView<OtpScreen, OtpScreenState> {
  const OtpScreenView(OtpScreenState state, {Key? key}): super(state, key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                color: Colors.white,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Header(title: "Phone Verification", onBackTap: () {state.b.goBack();}),
                      Expanded(
                        flex: 1,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                height: 120,
                                width: double.infinity,
                                color: primary,
                                child: Stack(
                                  children: [
                                    Positioned(
                                        left: 0,
                                        right: 0,
                                        bottom: 0,
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(topLeft: Radius.circular(kRadius4XL), topRight: Radius.circular((kRadius4XL))),
                                          ),
                                          height: 60,
                                        )
                                    ),
                                    const Positioned(
                                        bottom: 10,
                                        left: 0,
                                        right: 0,
                                        child: FloatingLogo()
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: getHeight(marginMd)),
                              Padding(padding: EdgeInsets.only(left: getWidth(marginXl), right: getWidth(marginXl)),
                                  child : Column(
                                    children: [
                                      Text("Number Verification",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: getFont(font2XL)
                                        ),
                                      ),
                                      SizedBox(height: getHeight(margin3Xs)),
                                      Text("+91 803XXXX674",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: darkSecondaryTitle,
                                            fontSize: getFont(fontMd)
                                        ),
                                      ),
                                      SizedBox(height: getHeight(margin3Xl)),
                                      OtpField(state),
                                      SizedBox(height: getHeight(marginMd)),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          ButtonNoFill(
                                              title: "Resend",
                                              color: Colors.black,
                                              size: fontMd,
                                              pad: const EdgeInsets.only(left: 18, right: 5, top: 13, bottom: 13),
                                              onTap: (){}
                                          ),
                                          const Text("OTP in 30 seconds"),
                                        ],
                                      ),
                                      SizedBox(height: getHeight(marginLg)),
                                      ButtonFill(
                                        size: fontMd,
                                        title: 'Submit OTP',
                                        color: primary,
                                        height: 50,
                                        txtcolor: allTimeBlack,
                                        pad: EdgeInsets.only(top: getWidth(marginXs), bottom: getWidth(marginXs)),
                                        onTap: (){
                                          state.b.openPage(const CategoriesScreen());
                                        },
                                      ),
                                      SizedBox(height: getHeight(margin3Xl)),
                                    ],
                                  )
                              )
                            ],
                          ),
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}
