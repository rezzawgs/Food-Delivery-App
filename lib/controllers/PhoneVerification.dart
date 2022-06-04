import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/base/class_base.dart';
import 'package:food_delivery_app/configs/size_configs.dart';
import 'package:food_delivery_app/variable/Country.dart';
import 'package:food_delivery_app/views/PhoneVerification/phoneverification_view.dart';


class PhoneVerification extends StatefulWidget {
  static String tag = "phoneverification";

  const PhoneVerification({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => PhoneVerificationState();
}

class PhoneVerificationState extends State<PhoneVerification> {
  late ClassBase b;
  final phoneController = TextEditingController(text: "");

  Country activeCountry = Country("+61", "australia", "Australia");

  @override
  void initState() {
    super.initState();
    b = ClassBase(context);
  }


  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfigs().init(context);
    return PhoneVerificationView(this);
  }
}
