import 'package:flutter/material.dart';
import 'package:food_delivery_app/configs/color_utils.dart';
import 'package:food_delivery_app/configs/size_configs.dart';
import 'package:food_delivery_app/configs/size_utils.dart';
import 'package:food_delivery_app/controllers/Categories.dart';
import 'package:food_delivery_app/controllers/LocationSearch.dart';
import 'package:food_delivery_app/globalWidgets/ButtonFill.dart';
import 'package:food_delivery_app/globalWidgets/Header.dart';
import 'package:food_delivery_app/globalWidgets/WidgetView.dart';
import 'package:food_delivery_app/views/Categories/listcategory.dart';

class CategoriesView extends WidgetView<CategoriesScreen, CategoriesState> {
  const CategoriesView(CategoriesState state, {Key? key}): super(state, key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                color: Colors.white,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Header(title: "Categories", onBackTap: () {state.b.goBack();}, lightTheme: true),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.only(left: getWidth(marginMd), right: getWidth(marginMd)),
                          child: Column(
                            children: [
                              SizedBox(height: getHeight(marginSm)),
                              Text("What do you want to\nfood you like",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: getFont(font2XL)
                                ),
                              ),
                              SizedBox(height: getHeight(marginMd)),
                              Expanded(flex: 1,
                                  child: GridView.count(
                                    crossAxisCount: 2,
                                    children: List.generate(state.datacategory.length, (index) {
                                      return ListCategory(state, state.datacategory[index], index);
                                    }),
                                  )
                              ),
                              SizedBox(height: getHeight(marginMd)),
                              ButtonFill(
                                size: fontMd,
                                title: 'Get Started',
                                color: primary,
                                height: 50,
                                txtcolor: allTimeBlack,
                                pad: EdgeInsets.only(top: getWidth(marginXs), bottom: getWidth(marginXs)),
                                onTap: (){
                                  state.b.openPage(const LocationSearch());
                                },
                              ),
                              SizedBox(height: getHeight(marginLg)),
                            ],
                          )
                        ),
                      )
                    ]
                )
            )
        )
    );
  }
}
