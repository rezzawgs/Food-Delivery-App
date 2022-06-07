import 'package:flutter/material.dart';
import 'package:food_delivery_app/configs/color_utils.dart';
import 'package:food_delivery_app/configs/size_utils.dart';
import 'package:food_delivery_app/controllers/LocationSearch.dart';
import 'package:food_delivery_app/globalWidgets/WidgetView.dart';
import 'package:food_delivery_app/variable/Place.dart';

class ListNearbyPlace extends WidgetView<LocationSearch, LocationSearchState> {
  const ListNearbyPlace(LocationSearchState state, this.data, this.idx, {Key? key}): super(state, key:key);

  final Place data;
  final int idx;

  @override
  Widget build(BuildContext context) {
    return
      InkWell(
        onTap: (){
        },
        child: Container(
          margin: const EdgeInsets.all(5),
          child: Row(
            children: [
             ClipRRect(
                borderRadius: BorderRadius.circular(kRadiusLg),
                  child:  SizedBox(
                    width: 90,
                    height: 90,
                    child: Image.asset("assets/images/${data.image}.png", fit: BoxFit.cover,),
                ),
              ),
              const SizedBox(width: marginMd),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(data.name,
                    style: const TextStyle(
                        fontSize: fontMd,
                        color: allTimeBlack,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  const SizedBox(height: margin4Xs),
                  Text("${data.price} - ${data.product}",
                    style: const TextStyle(
                        color: darkSecondaryTitle,
                        fontWeight: FontWeight.w400
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      );
  }
}
