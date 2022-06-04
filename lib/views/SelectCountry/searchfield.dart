import 'package:flutter/material.dart';
import 'package:food_delivery_app/configs/color_utils.dart';
import 'package:food_delivery_app/configs/size_utils.dart';
import 'package:food_delivery_app/controllers/SelectCountry.dart';
import 'package:food_delivery_app/globalWidgets/ButtonImgNoFill.dart';
import 'package:food_delivery_app/globalWidgets/WidgetView.dart';

class SearchField extends WidgetView<SelectCountry, SelectCountryState> {
  const SearchField(SelectCountryState state, {Key? key}): super(state, key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          color: searchField,
          borderRadius: BorderRadius.circular(kRadiusLg),
      ),
      child: Row(
        children: [
          ButtonImgNoFill(
            imagename: "search-left",
            width: 60,
            color: darkSecondaryTitle,
            pad: const EdgeInsets.all(11),
            onTap: (){
            },
          ),
          Expanded(
            flex: 1,
            child: TextFormField(
                autofocus: true,
                controller: state.keywordController,
                maxLines: 1,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                )
            ),
          )
        ],
      ),
    );
  }
}