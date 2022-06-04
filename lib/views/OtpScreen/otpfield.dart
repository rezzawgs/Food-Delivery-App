import 'package:flutter/material.dart';
import 'package:food_delivery_app/configs/color_utils.dart';
import 'package:food_delivery_app/configs/size_utils.dart';
import 'package:food_delivery_app/controllers/OtpScreen.dart';
import 'package:food_delivery_app/globalWidgets/WidgetView.dart';

class OtpField extends WidgetView<OtpScreen, OtpScreenState> {
  const OtpField(OtpScreenState state, {Key? key}): super(state, key:key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        field(state.otp1Controller),
        const SizedBox(width: marginSm),
        field(state.otp2Controller),
        const SizedBox(width: marginSm),
        field(state.otp3Controller),
        const SizedBox(width: marginSm),
        field(state.otp4Controller)
      ],
    );
  }

  Widget field(TextEditingController controller){
    return Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: searchField,
          borderRadius: BorderRadius.circular(kRadiusLg),
        ),
        alignment: Alignment.center,
        child: TextFormField(
            autofocus: true,
            controller: controller,
            maxLines: 1,
            textAlign: TextAlign.center,
            decoration: const InputDecoration(
              border: InputBorder.none,
            )
        ),
    );
  }
}