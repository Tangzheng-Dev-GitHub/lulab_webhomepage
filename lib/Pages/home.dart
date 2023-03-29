import 'package:flutter/material.dart';
import 'package:lulab_webhomepage/Widgets/searchBox.dart';

import 'about/about_lulab.dart';
import 'items/app.dart';
import 'items/download_app.dart';
import 'user/a_login.dart';
import 'web_learn/corse_page.dart';

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
                  const SearchBox(),
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
                      //fontWeight: FontWeight.w400,
                      fontSize: 23.5,
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
              SingleChildScrollView(child: all()),
              const SideListViewMenu(),
              const Center(
                  child:
                      Text("404 \n 未开发！", style: TextStyle(fontSize: 100.0))),
              SingleChildScrollView(
                child: downloadApp(),
              ),
              SingleChildScrollView(child: alulab())
            ],
          ),
        ),
      ),
    );
  }
}
