import 'package:flutter/material.dart';
import 'package:food_delivery_app/configs/size_utils.dart';

class ButtonFill extends StatelessWidget {
  const ButtonFill({
    Key? key,
    this.onTap,
    this.margin,
    this.imagename,
    this.pad,
    this.txtcolor,
    this.imageRight = false,
    required this.title,
    required this.color,
    required this.size,
    this.imgColor,
    this.sizeImg,
    this.width,
    this.height = 40,
    this.radius = kRadius,
  }) : super(key: key);

  final Function()? onTap;
  final EdgeInsetsGeometry? margin;
  final String title;
  final Color color;
  final Color? txtcolor;
  final double size;
  final double? sizeImg;
  final String? imagename;
  final EdgeInsetsGeometry? pad;
  final bool imageRight;
  final double? width;
  final double height;
  final double radius;
  final Color? imgColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child:
        Container(
          width: width,
          height: height,
          alignment: Alignment.center,
          margin: margin ?? const EdgeInsets.all(0),
          padding: pad ?? const EdgeInsets.only(left: 18, right: 18, top: 13, bottom: 13),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(radius),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              imagename != null && imagename != '' && !imageRight? Image.asset(
                'assets/icons/'+imagename!+'.png',
                color: imgColor ?? Colors.white,
                width: sizeImg,
                height: sizeImg,
              ) : Container(),
              imagename != null  && imagename != '' && title.isNotEmpty && !imageRight? const SizedBox(width: 8) : Container(),
              title.isNotEmpty ? Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: txtcolor ?? Colors.white,
                  fontSize: size,
                  fontWeight: FontWeight.w600
                ),
              ) : Container(),
              imagename != null  && imagename != '' && title.isNotEmpty && imageRight? const SizedBox(width: 8) : Container(),
              imagename != null && imagename != '' && imageRight? Image.asset(
                'assets/icons/'+imagename!+'.png',
                color: imgColor ?? Colors.white,
                width: sizeImg,
                height: sizeImg,
              ) : Container()
            ],
          ),
      )
    );
  }
}
