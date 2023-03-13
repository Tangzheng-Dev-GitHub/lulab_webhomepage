import 'package:flutter/material.dart';

// 引入轮播图插件
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';

  List<Map> imageList = [
    {
      "url":"https://yxs-web.oss-cn-beijing.aliyuncs.com/6455977b6fe2dabac6f308037087ed0b.png"
    },
    {
      "url":"https://yxs-web.oss-cn-beijing.aliyuncs.com/6455977b6fe2dabac6f308037087ed0b.png"
    },
    {
      "url":"https://yxs-web.oss-cn-beijing.aliyuncs.com/6455977b6fe2dabac6f308037087ed0b.png"
    },
    {
      "url":"https://yxs-web.oss-cn-beijing.aliyuncs.com/6455977b6fe2dabac6f308037087ed0b.png"
    }
  ];
  Widget Picture(){
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: AspectRatio(
            aspectRatio: 35/13,
            child: Swiper(
              itemBuilder: (BuildContext context,int index){
            // 配置图片地址
            return Image.network(imageList[index]["url"],fit: BoxFit.fill,);
          },
          // 配置图片数量
          itemCount: imageList.length ,
          // 左右箭头
          control: const SwiperControl(),
          // 无限循环
          loop: true,
          // 自动轮播
          autoplay: true,
        ),
      ),
    )
      ],
    );
  }
