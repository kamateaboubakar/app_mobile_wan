import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../home.dart';

class SectionMenu extends StatelessWidget {
  final String? title;
  final double? width;
  final double? height;
  final double? margin;
  List<SectionMenuItem> items;

  SectionMenu({
    Key? key,
    this.title,
    this.width,
    this.height,
    this.margin,
    this.items = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4.w),
        boxShadow: ContainerShadow(),
      ),
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
      margin: EdgeInsets.symmetric(horizontal: margin ?? 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) ...[
            Text(
              title!,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14.sp,
              ),
            ),
            Gap(1.h),
          ],
          /*Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: items,
          )*/
          Wrap(
            alignment: WrapAlignment.start,
            spacing: 4.w,
            runSpacing: 4.w,
            children: items,
          )
        ],
      ),
    );
  }
}
