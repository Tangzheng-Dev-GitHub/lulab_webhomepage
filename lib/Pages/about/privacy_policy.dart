import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget pp(BuildContext context) {
  return CupertinoAlertDialog(
    title: const Text(
      "Privacy Policy",
      style: TextStyle(
          fontSize: 20.0, fontFamily: "MyFontStyle", color: Colors.black),
    ),
    content: const Text('''\n
            Please read this "User Registration" carefully before registering as a user
            And use the App Privacy Agreement (hereinafter referred to as the "Agreement") to ensure that you fully understand the provisions of this Agreement
            The terms and conditions. Please read carefully and choose to accept or not accept this Agreement. Unless you accept this agreement
            Otherwise, you are not entitled to register, log in or use the Services covered by this Agreement.'''),
    actions: [
      CupertinoDialogAction(
        child: const Text(
          "  √ accept and exit  ",
          style:
              TextStyle(fontSize: 20.0, fontFamily: "han", color: Colors.green),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    ],
  );
}
