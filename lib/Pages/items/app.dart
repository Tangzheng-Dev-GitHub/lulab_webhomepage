import 'package:flutter/material.dart';
import 'peoples.dart';
import 'subjects.dart';
import 'picture_show.dart';
import 'learn.dart';
Widget all() {
  return Column(
      children: [
        picture(),
        peoples(),
        subjects(),
        learn(),
      ],
    );
}
