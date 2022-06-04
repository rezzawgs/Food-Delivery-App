import 'package:flutter/material.dart';
import 'package:food_delivery_app/configs/color_utils.dart';
import 'package:food_delivery_app/configs/size_configs.dart';
import 'package:food_delivery_app/configs/size_utils.dart';
import 'package:food_delivery_app/controllers/PhoneVerification.dart';
import 'package:food_delivery_app/controllers/SelectCountry.dart';
import 'package:food_delivery_app/globalWidgets/ButtonImgNoFill.dart';
import 'package:food_delivery_app/globalWidgets/WidgetView.dart';

class PhoneField extends WidgetView<PhoneVerification, PhoneVerificationState> {
  const PhoneField(PhoneVerificationState state, {Key? key}): super(state, key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.only(left: getWidth(marginXl), right: getWidth(marginXl)),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kRadiusLg),
          border: Border.all(color: darkSecondaryText)
      ),
      child: Row(
        children: [
          ButtonImgNoFill(
            imagename: state.activeCountry.image,
            width: 60,
            pad: const EdgeInsets.all(7),
            onTap: (){
              state.b.openPage(const SelectCountry());
            },
          ),
          Text(state.activeCountry.phoneCode),
          const SizedBox(width: margin4Xs),
          Expanded(
            flex: 1,
            child: TextFormField(
                autofocus: true,
                controller: state.phoneController,
                keyboardType: TextInputType.phone,
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