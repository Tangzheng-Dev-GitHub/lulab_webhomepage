import 'package:flutter/material.dart';

import 'end_about.dart';
import 'learn.dart';
import 'picture_show.dart';
import 'subjects.dart';

Widget homePage() {
  return Column(
    children: [
      picture(),
      subjects(),
      const Text("\n\n\n\n\n\n"),
      learn(),
      const Text("\n\n\n\n\n\n"),
      ea(),
    ],
  );
}
