import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/base/class_base.dart';
import 'package:food_delivery_app/configs/size_configs.dart';
import 'package:food_delivery_app/controllers/PhoneVerification.dart';
import 'package:food_delivery_app/views/Onboarding/onboarding_view.dart';


class Onboardingscreen extends StatefulWidget {
  static String tag = "onboarding";

  const Onboardingscreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => OnboardingscreenState();
}

class OnboardingscreenState extends State<Onboardingscreen> with SingleTickerProviderStateMixin {
  TabController? tabController;
  late ClassBase b;

  List<Map<String, String>> dataPage = [
    { "title": "Quick delivery at your home address", "description": "Home delivery and online reservation system for restaurants and cafe", "images" : "deliveryman"},
    { "title": "Quick delivery at your home address", "description": "Home delivery and online reservation system for restaurants and cafe", "images" : "deliveryman2"},
    { "title": "Quick delivery at your home address", "description": "Home delivery and online reservation system for restaurants and cafe", "images" : "deliveryman3"},
  ];
  int currentPge = 0;

  @override
  void initState() {
    super.initState();
    b = ClassBase(context);
    tabController = TabController(vsync: this, length: dataPage.length);
    tabController?.addListener(() {
      onTabChange();
    });
  }

  void onTabChange(){
    setState(() {
      currentPge = tabController!.index;
    });
  }

  void nextHandler(){
    if(currentPge < dataPage.length - 1) {
      setState(() {
        currentPge++;
        tabController?.animateTo(currentPge,duration: const Duration(seconds: 1));
      });
    }else{
      b.openPage(const PhoneVerification());
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfigs().init(context);
    return OnboardingView(this);
  }
}
