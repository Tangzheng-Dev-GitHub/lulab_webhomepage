import 'package:flutter/material.dart';

Widget learn() {
  return Column(
    children: [
      const Center(
        child: Text(
          "\n Individual learning\n",
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      const Divider(
        height: 10.0,
        color: Colors.green,
        thickness: 5.0,
        indent: 650.0,
        endIndent: 650.0,
      ),
      const Text("\n"),
      Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                "https://img.51miz.com/Element/00/70/02/00/bf9e00cb_E700200_ab675214.jpg",
              ),
            ),
          ),
          child: Column(
            children: const [
              Center(
                child: Text(
                  "Here it is",
                  style: TextStyle(
                    fontSize: 70.0,
                    fontFamily: 'han',
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Cutting-edge educational philosophy\n",
                  style: TextStyle(
                    fontSize: 70.0,
                    fontFamily: 'han',
                  ),
                ),
              ),
              Center(
                child: Text(
                  "You will reap the benefits",
                  style: TextStyle(
                    fontSize: 70.0,
                    fontFamily: 'han',
                  ),
                ),
              ),
              Center(
                child: Text(
                  "A unique hands-on opportunity",
                  style: TextStyle(
                    fontSize: 70.0,
                    fontFamily: 'han',
                  ),
                ),
              ),
            ],
          )),
    ],
  );
}
