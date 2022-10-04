import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomAppbar extends StatelessWidget {
  String imagePath;
  String userName;

  CustomAppbar({required this.imagePath, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 20,
        left: 10,
        right: 15,
      ),
      height: MediaQuery.of(context).size.height / 6,
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 40.0,
              backgroundImage: NetworkImage(imagePath),
              backgroundColor: Colors.transparent,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  const Text(
                    'Welcom',
                    style: TextStyle(fontSize: 20, color: Color(0XFF747474)),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Image.asset(
                    'assets/Group.png',
                  ),
                ],
              ),
              Text(
                userName,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          const Spacer(),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              const Positioned(
                  child: const ImageIcon(
                      AssetImage('assets/svgexport-6 (28) 1.png'))),
              Positioned(
                top: 35,
                left: 9,
                child: Container(
                  alignment: AlignmentDirectional.center,
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    color: const Color(0XFFF18F15),
                    borderRadius: BorderRadius.circular(80),
                  ),
                  child: const Text(
                    '2',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
