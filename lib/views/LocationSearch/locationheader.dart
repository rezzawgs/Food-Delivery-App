
import 'package:flutter/material.dart';
import 'package:food_delivery_app/configs/color_utils.dart';
import 'package:food_delivery_app/configs/size_configs.dart';
import 'package:food_delivery_app/configs/size_utils.dart';
import 'package:food_delivery_app/controllers/LocationSearch.dart';
import 'package:food_delivery_app/globalWidgets/ButtonFill.dart';
import 'package:food_delivery_app/globalWidgets/ButtonImgNoFill.dart';
import 'package:food_delivery_app/globalWidgets/WidgetView.dart';

class LocationHeader extends WidgetView<LocationSearch, LocationSearchState> {
  const LocationHeader(LocationSearchState state, {Key? key}): super(state, key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.only(left: getWidth(marginXl), right: getWidth(marginXl)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child:
            Container(
              height: 55,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: darkSecondaryText, width: 0.5),
                borderRadius: BorderRadius.circular(kRadiusLg),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 9,
                    offset: const Offset(0, -2), // changes position of shadow
                  ),
                ]
              ),
              child: Row(
                children: [
                  ButtonImgNoFill(
                    imagename: "angle-left",
                    color: primary,
                    size: font2Xs,
                    width: 45,
                    height: 35,
                    pad: const EdgeInsets.all(10),
                    onTap: () {state.b.goBack();},
                  ),
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                        autofocus: false,
                        controller: state.keywordController,
                        maxLines: 1,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Find your location here"
                        )
                    ),
                  )
                ],
              )
            )
          ),
          const SizedBox(width: marginSm),
          ButtonFill(
            imagename: "target",
            size: fontL,
            width: 55,
            height: 55,
            pad: const EdgeInsets.all(8),
            onTap: (){},
            title: '',
            color: Colors.white,
            imgColor: allTimeBlack,
            sizeImg: fontXL,
            radius: kRadiusLg,
          )
        ],
      ),
    );
  }
}
