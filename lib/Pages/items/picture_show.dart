import 'package:flutter/material.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';

List<Map> imageList = [
  {"url": "res/images/image1.jpg"},
  {"url": "res/images/image2.jpg"},
  {"url": "res/images/image3.jpg"},
  {"url": "res/images/image4.jpg"}
];

Widget picture() {
  return Column(
    children: [
      SizedBox(
        width: double.infinity,
        child: AspectRatio(
          aspectRatio: 35 / 13,
          child: Swiper(
              pagination: SwiperPagination(
                builder: SwiperCustomPagination(
                    builder: (BuildContext context, SwiperPluginConfig config) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(config.itemCount, (index) {
                      bool active = index == config.activeIndex;
                      return Container(
                        width: 30, // 设置线段的长度
                        height: 4, // 设置线段的高度
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: active ? Colors.yellow : Colors.grey,
                          // 设置选中点的颜色和未选中点的颜色
                          borderRadius: BorderRadius.circular(10), // 设置线段的圆角
                        ),
                      );
                    }),
                  );
                }),
                margin: const EdgeInsets.only(bottom: 20), // 设置点点的边距,
              ),
              itemBuilder: (BuildContext context, int index) {
                // 配置图片地址
                return Image.asset(imageList[index]["url"],
                    fit: BoxFit.fitWidth);
              },
              // 配置图片数量
              itemCount: imageList.length,
              loop: true,
              scrollDirection: Axis.horizontal,
              // 自动轮播
              autoplay: true,
              duration: 300),
        ),
      ),
      const Column(children: [
        Text(
          " \nWelcome to Lu Lab\n",
          style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
        ),
        Text(
          " Stepping out of the ivory tower of Tsinghua University, \nallowing everyone the opportunity to receive high-quality education,\n and nurturing talents for the innovative era\n\n\n\n",
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
      ])
    ],
  );
}
