import 'package:flutter/material.dart';
// 引入轮播图插件
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';

List<Map> imageList = [
  {
    "url":
        "https://p3.itc.cn/mpbp/pro/20211013/e65ab76c35d44db4b30551f9281eabfe.png"
  },
  {"url": "https://www.daxuecn.com/imgs/20140306/17_29010.jpg"},
  {
    "url":
        "https://news.gsau.edu.cn/_mediafile/gsau_news2016/2014/04/18/2yicgiar62.jpg"
  },
  {
    "url":
        "https://10.idqqimg.com/qqcourse_logo_ng/ajNVdqHZLLBiaiacbkrb8DD9H7tvicf5YicDqoW0kT4NibnPLCbwLsE2V5ftDkcaL7iapZBzMGCL3iaFlQ/"
  }
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
                return Image.network(
                  imageList[index]["url"],
                  fit: BoxFit.fill,
                );
              },
              // 配置图片数量
              itemCount: imageList.length,
              // 左右箭头
              control: const SwiperControl(),
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
