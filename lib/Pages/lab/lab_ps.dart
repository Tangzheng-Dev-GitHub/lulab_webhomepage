import 'package:flutter/material.dart';
// 引入轮播图插件
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';

List<Map> imageList = [
  {
    "url":
        "https://p8.itc.cn/images01/20211119/1d79b5e3cd7a475dbe37937f7b5632ac.jpeg"
  },
  {
    "url":
        "https://img.antpedia.com/instrument-library/attachments/wxpic/73/4d/a734d55c1f7fb511f0a69e90b9a21a27.jpeg"
  },
  {
    "url":
        "https://byvoid.com/attachments/blog/unconventional-self-realization/luxiangqian.jpg"
  },
  {"url": "https://i.ytimg.com/vi/XWcvoUh6Sls/hqdefault.jpg"}
];

Widget labPicture() {
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
                return Image.network(
                  imageList[index]["url"],
                );
              },
              // 配置图片数量
              itemCount: imageList.length,
              // 左右箭头
              control: const SwiperControl(),
              // 无限循环
              loop: true,
              scrollDirection: Axis.horizontal,
              // 自动轮播
              autoplay: true,
              duration: 300),
        ),
      )
    ],
  );
}
