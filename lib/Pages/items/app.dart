import 'package:flutter/material.dart';
import 'peoples.dart';
import 'subjects.dart';
import 'picture_show.dart';
import 'learn.dart';
import 'end_about.dart';
Widget all() {
  return Column(
      children: [
        picture(),
        peoples(),
        subjects(),
        learn(),
        ea(),
      ],
    );
}
