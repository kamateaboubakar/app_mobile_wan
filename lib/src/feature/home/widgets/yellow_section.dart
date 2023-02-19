import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../home.dart';

class YellowSection extends StatelessWidget {
  final String title;

  const YellowSection({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white,
            Colors.white,
            Colors.yellow,
            Colors.yellow,
          ],
        ),
        borderRadius: BorderRadius.circular(2.w),
        boxShadow: ContainerShadow(),
      ),
      padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.settings, size: 8.w),
          Gap(1.w),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 11.sp,
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
