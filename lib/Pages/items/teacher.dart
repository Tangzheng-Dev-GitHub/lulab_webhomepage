import 'package:flutter/material.dart';

Widget hua() {
  return Container(
      decoration: const BoxDecoration(color: Color.fromARGB(255, 34, 37, 43)),
      child: Row(
        children: [
          Image.asset("res/images/ysm.png"),
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
                  fontSize: 50.0,
                  fontFamily: "tnr",
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ));
}
