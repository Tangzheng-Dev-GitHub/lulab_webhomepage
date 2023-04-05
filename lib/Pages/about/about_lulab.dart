//child: Text("陆向谦实验室APP\n给您更高效的交互体验，装机必备\n打开就是语音交互栏，方便在各种场景和时刻对话。\n更有新闻资讯、视频课程，众多精彩内容，总有一\n项适合你。\n【语音交互更高效】\n强大的语音交互栏，语音对话触达全站，领先的智\n能语音可以快速识别你的需求，帮你找到想要的内\n容。\n【界面简洁更便捷】\n化繁为简，全新升级，界面更简洁。直播授课，精\n彩访谈、热点资讯，你想要的都能一目了然。\n【精选内容更懂你】\n精选新闻、资讯等优质内容，智能算法推荐给你更\n关心的、更喜欢的内容。\n【大咖课程全新上线】\n明星大咖创业导师课程全新上线，让你和大咖近一\n点儿、再近一点儿。", style: TextStyle(fontSize: 20.0))),
import 'package:flutter/material.dart';

import 'copyright_notice.dart';
import 'privacy_policy.dart';
import 'terms_of_service.dart';

Widget aboutLulab(BuildContext context) {
  return Column(
    children: [
      const Text("\n\n\n\n\n\n\n\n\n\n\n\n\n"),
      Image.asset("res/images/lulab_logo.jpeg"),
      const Text("\n\n"),
      Card(
        child: Column(
          children: <Widget>[
            ListTile(
              title: const Text(
                '     Service Use Agreement',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'MyFontStyle',
                  fontSize: 20.0,
                ),
              ),
              trailing: IconButton(
                icon: const Icon(Icons.navigate_next, size: 27.0),
                onPressed: () {
                  showDialog(
                      context: context, builder: (context) => tos(context));
                },
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text(
                '     Privacy Policy',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'MyFontStyle',
                  fontSize: 20.0,
                ),
              ),
              trailing: IconButton(
                icon: const Icon(Icons.navigate_next, size: 27.0),
                onPressed: () {
                  showDialog(
                      context: context, builder: (context) => pp(context));
                },
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text(
                '     Copyright Notice',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'MyFontStyle',
                  fontSize: 20.0,
                ),
              ),
              trailing: IconButton(
                icon: const Icon(Icons.navigate_next, size: 27.0),
                onPressed: () {
                  showDialog(
                      context: context, builder: (context) => cn(context));
                },
              ),
            ),
          ],
        ),
      ),
      const Text(
        "\n\n\n\n\n--Copyright by Shisuan New Mileage Technology (Beijing) Co., Ltd.--\n\n\n\n\n",
        style: TextStyle(color: Colors.grey),
      ),
    ],
  );
}
