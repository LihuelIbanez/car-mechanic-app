import 'package:flutter/material.dart';

class CustumContainer extends StatelessWidget {
  

  final double? marginhorizontal;
  final double? marginvertical;
  final double? paddinghorizontal;
  final double? paddingvertical;
  final double? radius;
  final double? borderwith;
  final double? height;
  final double? width;
  final Color? color;
  final Color? bordercolor;
  final Widget? child;
  
  const CustumContainer({
    Key? key,
    required this.color,
    this.marginhorizontal,
    this.marginvertical,
    this.paddinghorizontal,
    this.paddingvertical,
    this.radius,
    this.bordercolor,
    this.borderwith,
    this.child,
    this.height,
    this.width,
    }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: EdgeInsets.symmetric(horizontal: marginhorizontal ?? 0.0, vertical: marginvertical ?? 0.0,),
      padding: EdgeInsets.symmetric(horizontal: paddinghorizontal ?? 0.0, vertical: paddingvertical ?? 0.0,),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius?? 0.0),
        border: Border.all(color: bordercolor ?? const Color.fromRGBO(0, 0, 0, 0),width: borderwith ?? 0.0)
      ),
      child: child ?? const SizedBox(),
    );
  }
}