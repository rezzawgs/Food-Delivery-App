import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/base/class_base.dart';
import 'package:food_delivery_app/configs/size_configs.dart';
import 'package:food_delivery_app/variable/Place.dart';
import 'package:food_delivery_app/views/LocationSearch/locationsearch_view.dart';


class LocationSearch extends StatefulWidget {
  static String tag = "locationsearch";

  const LocationSearch({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => LocationSearchState();
}

class LocationSearchState extends State<LocationSearch> {
  late ClassBase b;
  final keywordController = TextEditingController(text: "");

  List<Place> nearbyPlace = [];
  
  @override
  void initState() {
    super.initState();
    b = ClassBase(context);
    initNearbyPlace();
  }
  
  void initNearbyPlace(){
    nearbyPlace = [];
    nearbyPlace.add(Place("hungrykitten", "Hungry Kitten", "\$\$\$", "Western"));
    nearbyPlace.add(Place("latarijen", "Sivaraja Secret Garden", "\$\$", "Beverages, Rice, Coffee"));
    nearbyPlace.add(Place("retawudeli", "Retawu Deli", "\$\$", "Coffee, Bakery, Sweets"));
  }


  @override
  void dispose() {
    keywordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfigs().init(context);
    return LocationSearchView(this);
  }
}
