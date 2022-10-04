import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            Icons.search,
            size: 25,
            color: Color(0XFF747474),
          ),
          SizedBox(
            width: 30,
          ),
          Text(
            'Search',
            style: TextStyle(fontSize: 25, color: Color(0XFF747474)),
          )
        ],
      ),
    );
  }
}
