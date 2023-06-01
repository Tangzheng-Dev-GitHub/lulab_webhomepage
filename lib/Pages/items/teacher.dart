import 'package:flutter/material.dart';

Widget hua() {
  return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  "https://openaicom.imgix.net/8d14e8f0-e267-4b8b-a9f2-a79120808f5a/chatgpt.jpg?auto=compress%2Cformat&fit=min&fm=jpg&q=80&rect=0%2C0%2C2048%2C2048&w=3200"))),
      child: Center(
          child: Row(
        children: [
          const Text(
              "                                                                                                   "),
          Image.asset(
            "res/images/ysm.png",
            //fit: BoxFit.,
          ),
          const Center(
            child: Text(
              """
              “
      
                   I had the privilege of being proflu's 
                   student in college, and I was deeply 
                   impressed by his emphasis on starting 
                   computer language education early. 
                   My nephew joined his lab, where he
                   gained an excellent foundation in 
                   programming..
      
              ”
          """,
              style: TextStyle(
                  fontSize: 55.0,
                  fontFamily: "tnr",
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      )));
}
