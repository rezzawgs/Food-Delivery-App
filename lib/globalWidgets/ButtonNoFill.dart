import 'package:flutter/material.dart';
import 'package:food_delivery_app/configs/size_utils.dart';

class ButtonNoFill extends StatelessWidget {
  const ButtonNoFill({
    Key? key,
    this.onTap,
    this.margin,
    this.pad,
    this.imageLeft,
    this.imageRight,
    this.sizeIcon,
    this.align,
    this.width,
    this.height = 40,
    required this.title,
    required this.color,
    required this.size,
  }) : super(key: key);

  final Function()? onTap;
  final EdgeInsetsGeometry? margin;
  final String title;
  final Color color;
  final double size;
  final double? sizeIcon;

  final Alignment? align;
  final EdgeInsetsGeometry? pad;
  final String? imageLeft;
  final String? imageRight;
  final double? width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child:
        Container(
          width: width,
          height: height,
          alignment: align,
          // color: Colors.grey,
          margin: margin ?? const EdgeInsets.all(0),
          padding: pad ?? const EdgeInsets.only(left: 18, right: 18, top: 13, bottom: 13),
          child: Row(
            mainAxisAlignment: align == Alignment.center ?  MainAxisAlignment.center : align == Alignment.centerLeft ? MainAxisAlignment.start : MainAxisAlignment.end,
            children: [
              imageLeft != null ? Image.asset(
                'assets/icons/'+imageLeft!+'.png',
                color: color,
                width: sizeIcon ?? size,
                height: sizeIcon ?? size,
              ) : Container(),
              imageLeft != null ? const SizedBox(width: margin4Xs) : Container(),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: color,
                  fontSize: size,
                  fontWeight: FontWeight.w600
                ),
              ),
              imageRight != null ? const SizedBox(width: margin4Xs) : Container(),
              imageRight != null ? Image.asset(
                'assets/icons/'+imageRight!+'.png',
                color: color,
                width: sizeIcon ?? size,
                height: sizeIcon ?? size,
              ) : Container()
          ],
        )
      )
    );
  }
}
