import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/base/class_base.dart';
import 'package:food_delivery_app/configs/size_configs.dart';
import 'package:food_delivery_app/variable/Categories.dart';
import 'package:food_delivery_app/views/Categories/categories_view.dart';


class CategoriesScreen extends StatefulWidget {
  static String tag = "categories";

  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => CategoriesState();
}

class CategoriesState extends State<CategoriesScreen> {
  late ClassBase b;

  List<Categories> datacategory = [];

  @override
  void initState() {
    super.initState();
    b = ClassBase(context);
    initCategory();
  }

  void initCategory(){
    datacategory = [];
    datacategory.add(Categories("Burger", "burger"));
    datacategory.add(Categories("Pizza", "pizza"));
    datacategory.add(Categories("Fried Rice", "friedrice"));
    datacategory.add(Categories("Chicken", "chicken"));
    datacategory.add(Categories("Kebab", "kebab"));
    datacategory.add(Categories("IcenCream", "icecream"));

    datacategory.add(Categories("Pizza", "pizza"));
    datacategory.add(Categories("Burger", "burger"));
    datacategory.add(Categories("Fried Rice", "friedrice"));
    datacategory.add(Categories("Chicken", "chicken"));
    datacategory.add(Categories("Fried Rice", "friedrice"));
    datacategory.add(Categories("IcenCream", "icecream"));
    datacategory.add(Categories("Kebab", "kebab"));
  }


  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfigs().init(context);
    return CategoriesView(this);
  }
}
