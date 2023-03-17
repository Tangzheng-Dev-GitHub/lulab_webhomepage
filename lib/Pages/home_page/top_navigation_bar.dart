import 'package:flutter/material.dart';
import 'app.dart';
import '../../Widgets/searchBox.dart';
import 'login.dart';

class PageBar extends StatelessWidget {
  const PageBar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LuLab: 聚天下名师英才组团玩',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight * 1.25),
              child: AppBar(
                backgroundColor: Colors.white,
                //设置AppBar背景颜色
                leading: Image.network(
                  "https://pic4.zhimg.com/v2-84274bc0fc5028dfc784d0719a6e8a65_xll.jpg",
                  fit: BoxFit.fill,
                ),
                actions: [
                  const SearchBar(),
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.yellow.shade600),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      minimumSize:
                          MaterialStateProperty.all(const Size(100, 30)),
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                    ),
                    onPressed: () {
                      runApp(const LoginPage());
                    },
                    child: const Text(
                      '登陆',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
                centerTitle: true,
                elevation: 5.0,
                title: const TabBar(
                    isScrollable: true,
                    tabs: [
                      Tab(
                        text: "首页",
                      ),
                      Tab(
                        text: "在线学习",
                      ),
                      Tab(
                        text: "企业服务",
                      ),
                      Tab(
                        text: "下载APP",
                      ),
                      Tab(
                        text: "关于",
                      ),
                    ],
                    labelColor: Colors.black,
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                    ),
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.yellow,
                    indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(width: 3, color: Colors.yellow),
                    )),
              )),
          body: TabBarView(
            children: [
              SingleChildScrollView(child: all()),
              const Center(
                  child:
                      Text("404 \n 未开发！", style: TextStyle(fontSize: 100.0))),
              const Center(
                  child:
                      Text("陆向谦实验室APP\n给您更高效的交互体验，装机必备\n打开就是语音交互栏，方便在各种场景和时刻对话。\n更有新闻资讯、视频课程，众多精彩内容，总有一\n项适合你。\n【语音交互更高效】\n强大的语音交互栏，语音对话触达全站，领先的智\n能语音可以快速识别你的需求，帮你找到想要的内\n容。\n【界面简洁更便捷】\n化繁为简，全新升级，界面更简洁。直播授课，精\n彩访谈、热点资讯，你想要的都能一目了然。\n【精选内容更懂你】\n精选新闻、资讯等优质内容，智能算法推荐给你更\n关心的、更喜欢的内容。\n【大咖课程全新上线】\n明星大咖创业导师课程全新上线，让你和大咖近一\n点儿、再近一点儿。", style: TextStyle(fontSize: 10.0))),
              const Center(
                  child:
                      Text("404 \n 未开发！", style: TextStyle(fontSize: 100.0))),
              const Center(
                  child:
                      Text("404 \n 未开发！", style: TextStyle(fontSize: 100.0))),
            ],
          ),
        ),
      ),
    );
  }
}
