import 'package:flutter/material.dart';
import 'package:food_delivery_app/configs/color_utils.dart';
import 'package:food_delivery_app/configs/size_configs.dart';
import 'package:food_delivery_app/configs/size_utils.dart';
import 'package:food_delivery_app/controllers/LocationSearch.dart';
import 'package:food_delivery_app/globalWidgets/ButtonFill.dart';
import 'package:food_delivery_app/globalWidgets/WidgetView.dart';
import 'package:food_delivery_app/views/LocationSearch/listnearbyplace.dart';
import 'package:food_delivery_app/views/LocationSearch/locationheader.dart';

class LocationSearchView extends WidgetView<LocationSearch, LocationSearchState> {
  const LocationSearchView(LocationSearchState state, {Key? key}): super(state, key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                color: Colors.white,
                height: double.infinity,
                child: Stack(
                    children: [
                      Positioned.fill(child: Image.asset("assets/images/map.png", fit: BoxFit.cover)),
                      DraggableScrollableSheet(
                        initialChildSize: 0.28,
                        minChildSize: 0.28,
                        maxChildSize: 0.8,
                        builder: (BuildContext context, ScrollController scrollcontroller) {
                        return Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(kRadius4XL), topRight: Radius.circular((kRadius4XL))),
                            ),
                            padding: EdgeInsets.only(left: getWidth(marginMd), right: getWidth(marginMd)),
                            child: SingleChildScrollView(
                              controller: scrollcontroller,
                              child:
                              Column(
                                children: [
                                  SizedBox(height: getHeight(marginXs)),
                                  const SizedBox(
                                    width: 50,
                                    child: Divider(thickness: 5,),
                                  ),
                                  SizedBox(height: getHeight(marginSm)),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: const BorderRadius.all(Radius.circular(kRadiusMd)),
                                        border: Border.all(color: darkSecondaryText, width: 0.5)
                                    ),
                                    padding: EdgeInsets.only(left: getWidth(marginMd), right: getWidth(marginMd), top: getWidth(marginSm), bottom: getWidth(marginSm)),
                                    child: Row(
                                        children: [
                                          Container(
                                              width: 50,
                                              height: 50,
                                              padding: const EdgeInsets.all(13),
                                              decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: secondary
                                              ),
                                              child: Image.asset("assets/icons/location.png")
                                          ),
                                          const SizedBox(width: marginXs),
                                          Expanded(child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: const [
                                              Text("Location", style: TextStyle(
                                                  fontWeight: FontWeight.w300,
                                                  color: darkSecondaryTitle
                                              )),
                                              SizedBox(height: 3),
                                              Text("76A eighth, New York, US", style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  color: allTimeBlack
                                              ),)
                                            ],
                                          )),
                                          Container(
                                              width: 30,
                                              height: 30,
                                              padding: const EdgeInsets.all(8),
                                              decoration: BoxDecoration(
                                                  color: secondary,
                                                  borderRadius: BorderRadius.circular(kRadius)
                                              ),
                                              child: Image.asset("assets/icons/edit.png")
                                          ),
                                        ]
                                    ),
                                  ),
                                  SizedBox(height: getHeight(marginMd)),
                                  ButtonFill(
                                    size: fontMd,
                                    title: 'Set Location',
                                    color: primary,
                                    height: 50,
                                    txtcolor: allTimeBlack,
                                    pad: EdgeInsets.only(top: getWidth(marginXs), bottom: getWidth(marginXs)),
                                    onTap: (){
                                    },
                                  ),
                                  SizedBox(height: getHeight(marginLg)),
                                  const SizedBox(
                                    width: double.infinity,
                                    child: Text("Place Nearby", style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: allTimeBlack
                                    ),)
                                  ),
                                  SizedBox(height: getHeight(marginXs)),
                                  ListView.separated(
                                      separatorBuilder: ((context, index) => const Divider(
                                        thickness: 0.8,
                                        color: searchField,
                                      )),
                                      shrinkWrap: true,
                                      physics: const NeverScrollableScrollPhysics(),
                                      itemCount: state.nearbyPlace.length,
                                      itemBuilder: (BuildContext context, int index) =>
                                          ListNearbyPlace(state, state.nearbyPlace[index], index)
                                  )
                                ],
                              ),
                            )
                          );
                        }
                      ),
                      Positioned(
                        top: marginSm,
                        left: 0,
                        right: 0,
                        child: LocationHeader(state),
                      ),
                    ]
                )
            )
        )
    );
  }
}
