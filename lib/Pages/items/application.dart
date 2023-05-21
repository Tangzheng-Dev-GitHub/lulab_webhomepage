import 'package:flutter/material.dart';

import 'end_about.dart';
import 'learn.dart';
import 'picture_show.dart';
import 'subjects.dart';
import "teacher.dart";

Widget homePage(BuildContext context) {
  return Column(
    children: [
      picture(),
      subjects(),
      //const Text("\n\n\n\n\n\n"),
      hua(),
      learn(),
      const Text("\n\n\n\n"),
      ea(context),
    ],
  );
}
