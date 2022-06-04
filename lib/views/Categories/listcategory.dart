import 'package:flutter/material.dart';
import 'package:food_delivery_app/configs/color_utils.dart';
import 'package:food_delivery_app/configs/size_utils.dart';
import 'package:food_delivery_app/controllers/Categories.dart';
import 'package:food_delivery_app/globalWidgets/WidgetView.dart';
import 'package:food_delivery_app/variable/Categories.dart';

class ListCategory extends WidgetView<CategoriesScreen, CategoriesState> {
  const ListCategory(CategoriesState state, this.data, this.idx, {Key? key}): super(state, key:key);

  final Categories data;
  final int idx;

  @override
  Widget build(BuildContext context) {
    return
      InkWell(
        onTap: (){
          state.setState(() {
            state.datacategory[idx].isSelected = !state.datacategory[idx].isSelected;
          });
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 9,
                  offset: const Offset(0, 2), // changes position of shadow
                ),
              ]
          ),
          margin: const EdgeInsets.all(5),
          child: Stack(
            children: [
              Positioned.fill(child: ClipRRect(
                borderRadius: BorderRadius.circular(kRadiusLg),
                child: Image.asset("assets/images/${data.image}.png"),
              )),
              Positioned(
                  bottom: 8,
                  left: 8,
                  right: 8,
                  child: Row(
                    children: [
                      Expanded(flex: 1,
                          child: Text(data.name,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500
                            ),
                          )
                      ),
                      data.isSelected ?
                      Container(
                        width: 20,
                        height: 20,
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: secondary,
                        ),
                        child: Image.asset("assets/icons/check.png"),
                      ) : Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: primary,
                            border: Border.all(color: Colors.white, width: 2)
                        ),
                      ),
                    ],
                  )
              )
            ],
          ),
        ),
      );
  }
}
