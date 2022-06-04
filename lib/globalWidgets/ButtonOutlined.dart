import 'package:flutter/material.dart';
import 'package:food_delivery_app/configs/color_utils.dart';
import 'package:food_delivery_app/configs/size_utils.dart';

class ButtonOutlined extends StatelessWidget {
  const ButtonOutlined({
    Key? key,
    this.onTap,
    this.margin,
    this.pad,
    this.width,
    this.height = 40,
    this.indicator = "",
    this.ali = Alignment.center,
    required this.imagename,
    this.color = fisherMan,
    this.size = fontL,
    this.bordercolor,
  }) : super(key: key);

  final Function()? onTap;
  final EdgeInsetsGeometry? margin;
  final String imagename;
  final Color? color;
  final double? size;
  final EdgeInsetsGeometry? pad;
  final String indicator ;
  final double? width;
  final double height;
  final Alignment ali;
  final Color? bordercolor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child:
        Container(
            width: width,
            height: height,
            alignment: ali,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kRadius),
              border: Border.all(color: bordercolor ?? color!),
            ),
            // color: Colors.grey,
            padding: pad ?? const EdgeInsets.only(left: 13, right: 13),
            child: Stack(
              children: [
                Positioned(
                    top: indicator.isNotEmpty ? 3 : 0,
                    left: ali != Alignment.centerRight || ali == Alignment.centerLeft ? 0 : null,
                    right: indicator.isNotEmpty ? 3 : ali == Alignment.centerLeft ? null : ali != Alignment.centerRight ? 0 : 0,
                    bottom: 0,
                    child: Image.asset(
                      'assets/icons/'+imagename+'.png',
                      color: color ?? null,
                      width: size,
                      height: size,
                    )),
                indicator.isNotEmpty ? Positioned(
                    right: 0,
                    top: 0,
                    child: Container(
                      width: size! / 1.3,
                      height: size! / 1.3,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: allTimeBlack,
                      ),
                      child: Text(indicator, style: const TextStyle(fontSize: 6, color: Colors.white)),
                    )) : Container()
              ],
            )
        )
    );
  }
}
