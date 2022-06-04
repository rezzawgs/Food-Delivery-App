import 'package:flutter/material.dart';
import 'package:food_delivery_app/configs/color_utils.dart';
import 'package:food_delivery_app/configs/size_configs.dart';
import 'package:food_delivery_app/configs/size_utils.dart';
import 'package:food_delivery_app/controllers/SelectCountry.dart';
import 'package:food_delivery_app/globalWidgets/ButtonFill.dart';
import 'package:food_delivery_app/globalWidgets/FloatingLogo.dart';
import 'package:food_delivery_app/globalWidgets/Header.dart';
import 'package:food_delivery_app/globalWidgets/WidgetView.dart';
import 'package:food_delivery_app/views/SelectCountry/listcountry_view.dart';
import 'package:food_delivery_app/views/SelectCountry/searchfield.dart';

class SelectCountryView extends WidgetView<SelectCountry, SelectCountryState> {
  const SelectCountryView(SelectCountryState state, {Key? key}): super(state, key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                color: Colors.white,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Header(title: "Select Country", onBackTap: () {state.b.goBack();}),
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
                                    Row(
                                      children: [
                                        Expanded(flex: 1, child: SearchField(state)),
                                        const SizedBox(width: margin3Xs),
                                        ButtonFill(
                                          width: 50,
                                          height: 50,
                                          title: "",
                                          color: primary,
                                          size: fontL,
                                          radius: kRadiusLg,
                                          pad: const EdgeInsets.all(3),
                                          imagename: "search-filter",
                                          sizeImg: font2Md,
                                          onTap: (){},
                                        )
                                      ],
                                    ),
                                    SizedBox(height: getHeight(marginMd)),
                                    SizedBox(
                                        width: double.infinity,
                                        child: ListView.builder(
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            physics: const NeverScrollableScrollPhysics(),
                                            itemCount: state.dataCountry.length,
                                            itemBuilder: (BuildContext context, int index) =>
                                                ListCountryView(state, state.dataCountry[index])
                                        )
                                    )
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
