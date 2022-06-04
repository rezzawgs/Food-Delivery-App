import 'package:flutter/material.dart';
import 'package:food_delivery_app/configs/color_utils.dart';
import 'package:food_delivery_app/configs/size_configs.dart';
import 'package:food_delivery_app/configs/size_utils.dart';
import 'package:food_delivery_app/globalWidgets/ButtonImgNoFill.dart';
import 'package:food_delivery_app/globalWidgets/ButtonOutlined.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.onBackTap,
    this.onTap,
    this.additionalIcon = "",
    this.onAdditionalTap,
    required this.title,
    this.lightTheme = false,
  }) : super(key: key);

  final Function()? onBackTap;
  final Function()? onTap;
  final Function()? onAdditionalTap;
  final String title;
  final String additionalIcon;
  final bool lightTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.only(left: getWidth(marginLg), right: getWidth(marginLg)),
      color: lightTheme ? null : primary,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ButtonOutlined(
            imagename: "angle-left",
            color: lightTheme ? primary : allTimeBlack,
            bordercolor : lightTheme ? darkSecondaryText : allTimeBlack,
            size: font2Xs,
            width: 35,
            height: 35,
            pad: const EdgeInsets.all(10),
            onTap: onBackTap,
          ),
          Expanded(child: Container(
              height: double.infinity,
              alignment: Alignment.center,
              child: Text(title,
                style: TextStyle(fontWeight: FontWeight.w600, color: fisherMan, fontSize: getFont(font2Md)),
              )
            )
          ),
          additionalIcon != "" ? ButtonImgNoFill(
            imagename: additionalIcon,
            size: fontL,
            width: 35,
            pad: const EdgeInsets.all(8),
            onTap: onAdditionalTap,
          ) : Container(),
          const SizedBox(width: 40)
        ],
      ),
    );
  }
}
