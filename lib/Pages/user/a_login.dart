import 'package:flutter/material.dart';

import '../home.dart';
import 'a_register.dart';
import 'temp_loading.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '登录陆向谦实验室',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            elevation: 5.0,
            centerTitle: false,
            title: const Text(
              '登录陆向谦实验室',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 30.0,
              ),
            ),
            backgroundColor: Colors.white,
            //设置AppBar背景颜色
            leading: Image.network(
              "https://pic4.zhimg.com/v2-84274bc0fc5028dfc784d0719a6e8a65_xll.jpg",
              fit: BoxFit.fill,
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(labelText: '用户名'),
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: '密码'),
                  obscureText: true,
                ),
                const SizedBox(height: 16.0),
                Row(children: [
                  ElevatedButton(
                    onPressed: () {
                      runApp(const Loading());
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xFFAEC933))),
                    child: const Text('登陆',
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                  ),
                  const Text("          "),
                  TextButton(
                    onPressed: () {
                      runApp(const MaterialApp(
                          debugShowCheckedModeBanner: false,
                          title: "注册陆向谦实验室",
                          home: RegisterPage()));
                    },
                    child: const Text('没有账户？注册',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 20,
                        )),
                  ),
                  const Text("          "),
                  TextButton(
                    onPressed: () {
                      runApp(const HomePage());
                    },
                    child: const Text('回到主页',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 20,
                        )),
                  )
                ]),
              ],
            ),
          ),
        ));
  }
}
