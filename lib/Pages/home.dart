import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'about/about_lulab.dart';
import 'download_application/download_app.dart';
import 'items/application.dart';
import 'lab/index.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lu Lab: 聚天下名师英才组团玩',
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
                leading: Center(
                  child: Image.asset(
                    "res/images/leadingimage_logo.png",
                    fit: BoxFit.fill,
                  ),
                ),
                flexibleSpace: Image.network(
                    "https://p1.ssl.qhmsg.com/t01c3b81fccea47f580.jpg",
                    fit: BoxFit.cover),
                actions: [
                  Center(
                      child: TextButton(
                    child: const Text(
                      "Powered by Flutter Web and Dart   ",
                      style: TextStyle(
                          fontSize: 15.0,
                          fontFamily: "MyFontStyle",
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    onPressed: () {
                      launch("https://flutter.dev/");
                    },
                  ))
                ],
                centerTitle: true,
                elevation: 5.0,
                title: const TabBar(
                    isScrollable: true,
                    tabs: [
                      Tab(
                        text: " Home ",
                      ),
                      // Tab(
                      //   text: "Online learning(test)",
                      // ),
                      Tab(
                        text: " Lu Lab ",
                      ),
                      Tab(
                        text: " Download APP(test) ",
                      ),
                      Tab(
                        text: " About",
                      ),
                    ],
                    labelColor: Colors.black,
                    labelStyle: TextStyle(
                      fontSize: 27.5,
                      fontFamily: 'han',
                      //fontWeight: FontWeight.bold
                    ),
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.yellow,
                    indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(width: 3.5, color: Colors.red),
                    )),
              )),
          body: TabBarView(
            children: [
              SingleChildScrollView(child: homePage(context)),
              //const SideListViewMenu(),
              const Lab(),
              SingleChildScrollView(
                child: downloadApp(),
              ),
              SingleChildScrollView(child: aboutLulab(context))
            ],
          ),
        ),
      ),
    );
  }
}
