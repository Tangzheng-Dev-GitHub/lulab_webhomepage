import 'package:flutter/material.dart';
Widget _buildSubjectCard(String title, String imagePath, String subtitle) {
  return Card(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(imagePath, fit: BoxFit.contain),
        const SizedBox(height: 10),
        Text(title, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w600,)),
        Center(child: Text(subtitle, style: const TextStyle(fontSize: 16,)))
      ],
    ),
  );
}
Widget subjects() {
  return Column(
    children: [
      const Center(
        child: Text(
          "\n 混沌创新学科",
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      const Text("\n"),
      const Divider(
        height: 10.0,
        color: Colors.yellow,
        thickness: 5.0,
        indent: 650.0,
        endIndent: 650.0,
      ),
      GridView.count(
        crossAxisCount: 3,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          _buildSubjectCard(
              '第二曲线',
              'https://bpic.588ku.com/element_pic/20/06/30/6b8e6661891b0dfef9f9bfe3ac8f31bc.jpg!/fw/253/quality/90/unsharp/true/compress/true',
              "\n通过8个思维模型系统完备学创新学科基础理论，帮助个人和企业突破极限 ，实现10倍速式的增长。"
          ),
          _buildSubjectCard(
              '第一性原理',
              'https://bpic.588ku.com/element_pic/20/06/30/6b8e6661891b0dfef9f9bfe3ac8f31bc.jpg!/fw/253/quality/90/unsharp/true/compress/true',
              "\n建立公理化思维方式，打破群体信念的束缚，掌握批判性思维能力，用第一性原理帮助个人和企业跨越鸿沟，实现第二曲线式的增长。"
          ),
          _buildSubjectCard(
              '理念世界',
              'https://bpic.588ku.com/element_pic/20/06/30/6b8e6661891b0dfef9f9bfe3ac8f31bc.jpg!/fw/253/quality/90/unsharp/true/compress/true',
              "\n通过临在当下，灵感流淌，击穿阈值，实现90度革命，帮你创造属于你的美好作品，实现人生的超越和救赎"
          ),
        ],
      )
    ],
  );
}
