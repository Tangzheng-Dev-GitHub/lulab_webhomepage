import 'package:flutter/material.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';

List<Map> imageList = [
  //{"url": "res/images/image1.jpg"},
  {"url": "res/images/image2.jpg"},
  {"url": "res/images/image3.jpg"},
  {"url": "res/images/codeing.png"}
];

Widget picture() {
  return Column(children: [
    Stack(alignment: Alignment.center, children: [
      // const Text(
      //   "Lu Lab",
      //   style: TextStyle(
      //     fontSize: 70.5,
      //     fontFamily: 'han',
      //   ),
      // ),
      Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: AspectRatio(
              aspectRatio: 35 / 13,
              child: Swiper(
                  pagination: SwiperPagination(
                    builder: SwiperCustomPagination(builder:
                        (BuildContext context, SwiperPluginConfig config) {
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
                              borderRadius:
                                  BorderRadius.circular(10), // 设置线段的圆角
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
          // const Column(children: [
          //   Text(
          //     " \nNew Education in the Age of AI",
          //     style: TextStyle(fontSize: 52.0, fontFamily: "han"),
          //   ),
          //   Text(
          //     '''
          //
          //     Stepping out of the ivory tower of Tsinghua University,
          //     allowing everyone the opportunity to receive high-quality education,
          //     and nurturing talents for the innovative era.
          //
          //     Join us to explore cutting-edge technologies,
          //     develop essential skills, and collaborate with like-minded
          //     people. Unleash your creativity, make a meaningful impact,
          //     and shape the future with us. ''',
          //     style: TextStyle(fontSize: 25.0, fontFamily: "tnr"),
          //   ),
          //   Text(
          //     " \nWelcome to Lu Lab!\n",
          //     style: TextStyle(
          //         fontSize: 52.0, fontFamily: "ac", fontWeight: FontWeight.bold),
          //   ),
          // ])
        ],
      ),
      Column(children: [
        Center(
            child: Stack(
          children: <Widget>[
            // Stroked text as border.
            Text(
              'Lu Lab',
              style: TextStyle(
                fontSize: 150,
                fontFamily: "han",
                fontWeight: FontWeight.bold,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 6
                  ..color = Colors.white,
              ),
            ),
            // Solid text as fill.
            const Text(
              'Lu Lab',
              style: TextStyle(
                  fontSize: 150, color: Colors.green, fontFamily: "han"),
            ),
          ],
        )),

        Center(
            child: Stack(
          children: <Widget>[
            // Stroked text as border.
            Text(
              '——Innovation and Entrepreneurship',
              style: TextStyle(
                fontSize: 30,
                //color: Colors.white,
                fontFamily: "col",
                fontWeight: FontWeight.bold,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 6
                  ..color = Colors.white,
              ),
            ),
            // Solid text as fill.
            const Text(
              '——Innovation and Entrepreneurship',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontFamily: "col",
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        )),
        // const Text(
        //   "——Innovation and Entrepreneurship",
        //   style: TextStyle(fontSize: 30, color: Colors.white, fontFamily: "han"),
        // )
      ])
    ]),
    Column(children: [
      const Text(
        " \n\n",
      ),
      Image.asset(
        "res/images/hello.png",
        height: 250,
        width: 375,
      ),
      const Text(
        " To The",
        style: TextStyle(fontSize: 52.0, fontFamily: "han"),
      ),
      const Text(
        " New Education in the Age of AI",
        style: TextStyle(fontSize: 52.0, fontFamily: "han"),
      ),
      const Text(
        '''
            
            Stepping out of the ivory tower of Tsinghua University,
            allowing everyone the opportunity to receive high-quality education,
            and nurturing talents for the innovative era. 
            
            Join us to explore cutting-edge technologies, 
            develop essential skills, and collaborate with like-minded 
            people. Unleash your creativity, make a meaningful impact, 
            and shape the future with us. ''',
        style: TextStyle(fontSize: 25.0, fontFamily: "tnr"),
      ),
      Stack(
        children: <Widget>[
          // Stroked text as border.
          Text(
            '\nWelcome to Lu Lab!\n',
            style: TextStyle(
              fontSize: 52,
              //color: Colors.white,
              fontFamily: "ac",
              fontWeight: FontWeight.bold,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 6
                ..color = Colors.greenAccent,
            ),
          ),
          // Solid text as fill.
          const Text(
            '\nWelcome to Lu Lab!\n',
            style: TextStyle(
              fontSize: 52,
              color: Colors.black,
              fontFamily: "ac",
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      )
    ])
  ]);
}
