import 'package:flutter/material.dart';

Widget ea() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text("\n\n"),
      const Center(
          child: Divider(
        endIndent: 50,
        indent: 50,
        color: Colors.black,
      )),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "\n     关于陆向谦实验室",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
      const Text("\n"),
      const Divider(
        height: 10.0,
        color: Colors.green,
        thickness: 4.0,
        endIndent: 1250,
        indent: 40,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "\n     About LuLab",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
          Text(
            "\n    公司名称：视算新里程科技（北京）有限公司",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: 'MyFontStyle',
            ),
          ),
          Text(
            "\n    联系我们：business@proflu.cn\n\n",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: 'MyFontStyle',
            ),
          )
        ],
      ),
    ],
  );
}
