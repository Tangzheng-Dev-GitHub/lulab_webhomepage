import 'package:flutter/material.dart';

import 'end_about.dart';
import 'learn.dart';
import 'peoples.dart';
import 'picture_show.dart';
import 'subjects.dart';

Widget homePage() {
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
