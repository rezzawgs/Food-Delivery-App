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

  final otp1Controller = TextEditingController(text: "");
  final otp2Controller = TextEditingController(text: "");
  final otp3Controller = TextEditingController(text: "");
  final otp4Controller = TextEditingController(text: "");

  @override
  void initState() {
    super.initState();
    b = ClassBase(context);
  }


  @override
  void dispose() {
    otp1Controller.dispose();
    otp2Controller.dispose();
    otp3Controller.dispose();
    otp4Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfigs().init(context);
    return OtpScreenView(this);
  }
}
