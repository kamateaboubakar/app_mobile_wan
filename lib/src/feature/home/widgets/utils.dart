import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<BoxShadow> ContainerShadow() => [
      BoxShadow(
        color: Colors.grey.shade200,
        spreadRadius: 0.5,
        blurRadius: 9,
        offset: Offset(0, 3),
        blurStyle: BlurStyle.inner,
      ),
    ];
