import 'package:flutter/material.dart';

import '../home.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "404",
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              const CircularProgressIndicator(),
              TextButton(
                onPressed: () {
                  runApp(const HomePage());
                },
                child: const Text('回到主页',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 20,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
