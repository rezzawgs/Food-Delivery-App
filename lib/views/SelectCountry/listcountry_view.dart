import 'package:flutter/material.dart';
import 'package:food_delivery_app/configs/color_utils.dart';
import 'package:food_delivery_app/configs/size_configs.dart';
import 'package:food_delivery_app/configs/size_utils.dart';
import 'package:food_delivery_app/controllers/SelectCountry.dart';
import 'package:food_delivery_app/globalWidgets/ButtonImgNoFill.dart';
import 'package:food_delivery_app/globalWidgets/WidgetView.dart';
import 'package:food_delivery_app/variable/Country.dart';

class ListCountryView extends WidgetView<SelectCountry, SelectCountryState> {
  const ListCountryView(SelectCountryState state, this.data, {Key? key}): super(state, key:key);

  final Country data;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: darkSecondaryText, width: 0.5))
      ),
      child: Row(
        children: [
          Padding(padding: const EdgeInsets.only(top: 10, bottom: 10, right: 10),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(kRadius4XL)),
              child: Image.asset("assets/icons/${data.image}.png"),
            )
          ),
          Expanded(
            flex: 1,
            child: Text(data.name),
          ),
          Text(data.phoneCode),
        ],
      ),
    );
  }
}