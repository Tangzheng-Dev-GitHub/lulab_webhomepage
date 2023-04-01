import 'package:flutter/material.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';

List<Map> imageList = [
  {
    "url":
        "https://p3.itc.cn/mpbp/pro/20211013/e65ab76c35d44db4b30551f9281eabfe.png"
  },
  {
    "url":
        "https://th.bing.com/th/id/OIP.ed9Cg2nr7vjDa0HPFmJ_lwHaEi?pid=ImgDet&rs=1"
  },
  {
    "url":
        "https://th.bing.com/th/id/R.3cee1f1c94dcc844aae574828c770cf3?rik=I%2bky8xynHrLzbA&riu=http%3a%2f%2fi1.sinaimg.cn%2fcj%2fleadership%2fsxydt%2f20080910%2fU453P31T1D5293461F6001DT20080910191531.jpg&ehk=OwHnNHpxDIFnCW8yqycd43ya1cDXs9oM11tXQEZglF0%3d&risl=&pid=ImgRaw&r=0"
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
                );
              },
              // 配置图片数量
              itemCount: imageList.length,
              // 左右箭头
              //control: const SwiperControl(),
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
