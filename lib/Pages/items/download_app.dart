import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Widget downloadApp() {
  return Column(
    children: [
      const Text("\n\n\n\n\n"),
      Image.asset("res/lulab_logo.jpeg"),
      const Text("\n\n\n\n\n"),
      const Text(
        "下载陆向谦实验室Application",
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.w600,
        ),
      ),
      const Text("\n\n"),
      const Text(
        "下载选项：",
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w600,
        ),
      ),
      const Text("\n\n\n\n\n"),
        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
              elevation: MaterialStateProperty.all(0),
            ),
            onPressed: () {
              launch(
                  "https://github.com/proflulab/LuLab_frontend/tree/master/android");
            },
            child: const ListTile(
              title: Text(
                "下载（Android）",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                "在android手机上安装陆向谦实验室",
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              leading: Icon(Icons.android),
            )),
        const Text("\n\n"),
        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
              elevation: MaterialStateProperty.all(0),
            ),
            onPressed: () {
              launch(
                  "https://github.com/proflulab/LuLab_frontend/tree/master/ios");
            },
            child: const ListTile(
              title: Text(
                "下载（iOS）",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                "在iPhone手机上安装陆向谦实验室",
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              leading: Icon(Icons.apple),
            )),
      const Text("\n\n"),
      ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            elevation: MaterialStateProperty.all(0),
          ),
          onPressed: () {
            launch(
                "https://github.com/proflulab/LuLab_frontend/tags");
          },
          child: const ListTile(
            title: Text(
              "下载陆向谦实验室Application（github版本发布式链接）",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            leading: Icon(Icons.install_mobile),
          )),
      const Text("\n\n"),
      ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            elevation: MaterialStateProperty.all(0),
          ),
          onPressed: () {
            launch(
                "https://github.com/proflulab/LuLab_frontend/");
          },
          child: const ListTile(
            title: Text(
              "下载陆向谦实验室Application（github全源码链接,包括网页版）",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            leading: Icon(Icons.install_desktop),
          )),
      const Text(
          "\n\n\n\n\n声明：陆向谦实验室Application未在GooglePlay和AppStore上传，只支持源码下载")
    ],
  );
}
