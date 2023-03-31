import 'package:flutter/material.dart';

import 'about/about_lulab.dart';
import 'download_application/download_app.dart';
import 'items/application.dart';
import 'lab/index.dart';
import 'web_learn/course_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                leading: Align(
                    alignment: Alignment.center,
                    child: Image.network(
                      "https://pic4.zhimg.com/v2-84274bc0fc5028dfc784d0719a6e8a65_xll.jpg",
                      fit: BoxFit.fill,
                    )),
                flexibleSpace: Image.network(
                    "https://p1.ssl.qhmsg.com/t01c3b81fccea47f580.jpg",
                    fit: BoxFit.cover),
                actions: [
                  Center(
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "我想调整此页面的语言      ",
                          style: TextStyle(
                              fontSize: 15.0,
                              fontFamily: "han",
                              color: Colors.black),
                        )),
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
                        text: "陆向谦实验室",
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
                      fontSize: 21.5,
                      fontFamily: 'MyFontStyle',
                    ),
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.yellow,
                    indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(width: 3, color: Colors.red),
                    )),
              )),
          body: TabBarView(
            children: [
              SingleChildScrollView(child: homePage()),
              const SideListViewMenu(),
              const Lab(),
              SingleChildScrollView(
                child: downloadApp(),
              ),
              SingleChildScrollView(child: aboutLulab())
            ],
          ),
        ),
      ),
    );
  }
}
