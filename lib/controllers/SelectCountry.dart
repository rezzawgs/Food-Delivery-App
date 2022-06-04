import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/base/class_base.dart';
import 'package:food_delivery_app/configs/size_configs.dart';
import 'package:food_delivery_app/variable/Country.dart';
import 'package:food_delivery_app/views/SelectCountry/selectcountry_view.dart';


class SelectCountry extends StatefulWidget {
  static String tag = "selectcountry";

  const SelectCountry({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => SelectCountryState();
}

class SelectCountryState extends State<SelectCountry> {
  late ClassBase b;
  final keywordController = TextEditingController(text: "");

  List<Country> dataCountry = [];
  
  @override
  void initState() {
    super.initState();
    b = ClassBase(context);
    initCountry();
  }

  void initCountry(){
    dataCountry = [];
    dataCountry.add(Country("+1", "usa", "U.S.A"));
    dataCountry.add(Country("+966", "saudiarabia", "Saudi Arabia"));
    dataCountry.add(Country("+62", "indonesia", "Indonesia"));
    dataCountry.add(Country("+60", "malaysia", "Malaysia"));
    dataCountry.add(Country("+88", "bangladesh", "Bangladesh"));
    dataCountry.add(Country("+61", "australia", "Australia"));
  }


  @override
  void dispose() {
    keywordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfigs().init(context);
    return SelectCountryView(this);
  }
}
