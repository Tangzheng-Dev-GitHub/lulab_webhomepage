import 'package:flutter/material.dart';

Widget learn() {
  return Column(
    children: [
      const Center(
        child: Text(
          "\n 个人学习\n",
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      const Divider(
        height: 10.0,
        color: Colors.green,
        thickness: 5.0,
        indent: 650.0,
        endIndent: 650.0,
      ),
      const Text("\n"),
      Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                "https://img.51miz.com/Element/00/70/02/00/bf9e00cb_E700200_ab675214.jpg",
              ),
            ),
          ),
          child: Column(
            children: const [
              Center(
                child: Text(
                  "这里有\n",
                  style: TextStyle(
                    fontSize: 70.0,
                    fontFamily: 'han',
                  ),
                ),
              ),
              Center(
                child: Text(
                  "前沿的教育理念\n",
                  style: TextStyle(
                    fontSize: 70.0,
                    fontFamily: 'han',
                  ),
                ),
              ),
              Center(
                child: Text(
                  "你将收获\n",
                  style: TextStyle(
                    fontSize: 70.0,
                    fontFamily: 'han',
                  ),
                ),
              ),
              Center(
                child: Text(
                  "独一无二的实践机会\n",
                  style: TextStyle(
                    fontSize: 70.0,
                    fontFamily: 'han',
                  ),
                ),
              ),
            ],
          )),
      const Text("\n\n"),
      Wrap(
        spacing: 8.0, // 项之间的水平间距
        runSpacing: 8.0, // 行之间的垂直间距
        children: List.generate(
          7,
          (index) => CircleAvatar(
            radius: 60.0,
            child: Image.asset("res/images/lulab_logo.jpeg"),
          ),
        ),
      ),
      const Text("\n"),
      Wrap(
        spacing: 8.0, // 项之间的水平间距
        runSpacing: 8.0, // 行之间的垂直间距
        children: List.generate(
          7,
          (index) => CircleAvatar(
            radius: 60.0,
            child: Image.asset("res/images/lulab_logo.jpeg"),
          ),
        ),
      ),
      const Text("\n"),
      Wrap(
        spacing: 8.0, // 项之间的水平间距
        runSpacing: 8.0, // 行之间的垂直间距
        children: List.generate(
          7,
          (index) => CircleAvatar(
            radius: 60.0,
            child: Image.asset("res/images/lulab_logo.jpeg"),
          ),
        ),
      ),
      const Text("\n"),
      Wrap(
        spacing: 8.0, // 项之间的水平间距
        runSpacing: 8.0, // 行之间的垂直间距
        children: List.generate(
          7,
          (index) => CircleAvatar(
            radius: 60.0,
            child: Image.asset("res/images/lulab_logo.jpeg"),
          ),
        ),
      ),
      const Text("\n\n"),
    ],
  );
}
