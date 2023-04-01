import 'package:flutter/material.dart';

Widget _buildSubjectCard(String title, String imagePath, String subtitle) {
  return Card(
    color: Colors.white,
    elevation: 0,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imagePath, fit: BoxFit.fitWidth),
        const SizedBox(height: 10),
        Text(title,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
            )),
        Center(
            child: Text(subtitle,
                style: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'MyFontStyle',
                ))),
      ],
    ),
  );
}

Widget _buildLTItem(String label, String sublable, String a) {
  return ListView(children: [
    ListTile(
      title: Text(
        label,
        style: const TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(sublable,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 25.0,
            fontFamily: 'MyFontStyle',
          )),
      leading: Image.network(a),
    )
  ]);
}

Widget subjects() {
  return Column(
    children: [
      const Center(
        child: Text(
          "\n 陆向谦实验室",
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      const Text("\n"),
      const Divider(
        height: 10.0,
        color: Colors.green,
        thickness: 5.0,
        indent: 650.0,
        endIndent: 650.0,
      ),
      GridView.count(
        crossAxisCount: 3,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          _buildSubjectCard('第二曲线', 'res/images/lulab_logo.jpeg',
              "\n通过8个思维模型系统完备学创新学科基\n础理论，帮助个人和企业突破极限 ，实\n现10倍速式的增长。"),
          _buildSubjectCard('第一性原理', 'res/images/lulab_logo.jpeg',
              "\n建立公理化思维方式，打破群体信念的\n束缚，掌握批判性思维能力，用第一性\n原理帮助个人和企业跨越鸿沟，实现第\n二曲线式的增长。"),
          _buildSubjectCard('理念世界', 'res/images/lulab_logo.jpeg',
              "\n通过临在当下，灵感流淌，击穿阈值，\n实现90度革命，帮你创造属于你的美\n好作品，实现人生的超越和救赎"),
        ],
      ),
      const Text("\n\n\n\n"),
      SizedBox(
          height: 180.0,
          width: 1000.0,
          child: GridView.count(
            crossAxisCount: 2,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              _buildLTItem("少年班", "\n在原宇宙里玩游戏\n",
                  "https://tse2-mm.cn.bing.net/th/id/OIP-C.u-cVSLaHLaT5qddtc7mOfQAAAA?pid=ImgDet&rs=1"),
              _buildLTItem('工业班', "\n做项目和Codeing",
                  "https://tse2-mm.cn.bing.net/th/id/OIP-C.u-cVSLaHLaT5qddtc7mOfQAAAA?pid=ImgDet&rs=1"),
            ],
          )),
      SizedBox(
          height: 180.0,
          width: 1000.0,
          child: GridView.count(
            crossAxisCount: 2,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              _buildLTItem("营销组", "\n商业创新必修课，迎接新成员加入",
                  "https://tse2-mm.cn.bing.net/th/id/OIP-C.u-cVSLaHLaT5qddtc7mOfQAAAA?pid=ImgDet&rs=1"),
              _buildLTItem('领导力俱乐部', "\n创始人和团队的共学场",
                  "https://tse2-mm.cn.bing.net/th/id/OIP-C.u-cVSLaHLaT5qddtc7mOfQAAAA?pid=ImgDet&rs=1"),
            ],
          ))
    ],
  );
}
