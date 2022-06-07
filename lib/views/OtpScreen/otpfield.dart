import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery_app/configs/color_utils.dart';
import 'package:food_delivery_app/configs/size_utils.dart';
import 'package:food_delivery_app/controllers/OtpScreen.dart';
import 'package:food_delivery_app/globalWidgets/WidgetView.dart';

class OtpField extends WidgetView<OtpScreen, OtpScreenState> {
  const OtpField(OtpScreenState state, {Key? key}): super(state, key:key);

  void onTextChange(String data, int index){
      if(data.isEmpty && index > 0){
        state.otpFocusNodes[index-1].requestFocus();
      }else if(data.isNotEmpty && index < state.otpLength - 1){
        state.otpFocusNodes[index+1].requestFocus();
      }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:[
        for(int i = 0 ; i < state.otpControllers.length ; i++ ) field(state.otpControllers[i], state.otpFocusNodes[i], i)
      ]
    );
  }

  Widget field(TextEditingController controller, FocusNode focus, int index){
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
            onChanged: (val) => onTextChange(val, index),
            focusNode: focus,
            maxLines: 1,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
            ],
            textAlign: TextAlign.center,
            decoration: const InputDecoration(
              border: InputBorder.none,
            )
        ),
    );
  }
}