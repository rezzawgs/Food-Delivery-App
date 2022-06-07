import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/base/class_base.dart';
import 'package:food_delivery_app/configs/size_configs.dart';
import 'package:food_delivery_app/views/OtpScreen/otpscreen_view.dart';


class OtpScreen extends StatefulWidget {
  static String tag = "otpscreen";

  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => OtpScreenState();
}

class OtpScreenState extends State<OtpScreen> {
  late ClassBase b;

  var otpLength = 4;
  List<TextEditingController> otpControllers = [];
  List<FocusNode> otpFocusNodes = [];

  @override
  void initState() {
    super.initState();
    b = ClassBase(context);
    initController();
  }

  void initController(){
    otpControllers = [];
    otpFocusNodes = [];
    for(var i = 0 ; i < otpLength ; i++){
      otpControllers.add(TextEditingController(text: ""));
      otpFocusNodes.add(FocusNode());
    }
  }


  @override
  void dispose() {
    for(var i = 0 ; i < otpLength ; i++){
      otpControllers[i].dispose();
      otpFocusNodes[i].dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfigs().init(context);
    return OtpScreenView(this);
  }
}
