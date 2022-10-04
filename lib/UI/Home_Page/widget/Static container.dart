import 'package:flutter/material.dart';

class StaticContainer extends StatelessWidget {
  bool selected;
  Color color;
  String imagePath;
  int number;
  String type;
  String text;

  StaticContainer(
      {required this.color,
      required this.text,
      required this.imagePath,
      required this.number,
      required this.type,
      required this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: 150,
      height: 200,
      decoration: BoxDecoration(
          border: selected
              ? Border.all(color: const Color(0XFFF18F15), width: 2)
              : Border.all(color: Colors.transparent, width: 1),
          borderRadius: BorderRadius.circular(18),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                color: Color(0XFF747474),
                blurRadius: 14,
                spreadRadius: 1,
                offset: Offset(0, 1))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imagePath),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '$number',
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold, color: color),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                type,
                style: const TextStyle(fontSize: 15, color: Color(0XFF747474)),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 14, color: Colors.black),
          )
        ],
      ),
    );
  }
}
