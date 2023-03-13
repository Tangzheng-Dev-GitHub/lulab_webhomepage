import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class TempPage_DeadPage extends StatelessWidget {
  const TempPage_DeadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child:Text("error:404!", style: TextStyle(
            color: Colors.red,
            fontSize: 120.0
          ),)
        ),
      ),
    );
  }
}
