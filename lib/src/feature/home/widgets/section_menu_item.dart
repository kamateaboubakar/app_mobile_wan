import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

class SectionMenuItem extends StatelessWidget {
  final String title;

  const SectionMenuItem({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 15.w,
          height: 15.w,
          decoration: BoxDecoration(
            color: Color.fromRGBO(206, 248, 254, 1),
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: Icon(Icons.interpreter_mode),
        ),
        Gap(0.5.h),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 10.sp),
        )
      ],
    );
  }
}
