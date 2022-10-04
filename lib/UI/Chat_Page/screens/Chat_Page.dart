import 'package:flutter/material.dart';
import 'package:task/UI/Chat_Page/Widget/Items.dart';
import 'package:task/UI/Chat_Page/Widget/Search.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0XFFF5F5F5),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Chat',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Search(),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: ListView.separated(
                    itemBuilder: (_, index) {
                      return items[index];
                    },
                    itemCount: 15,
                    scrollDirection: Axis.vertical,
                    separatorBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 2,
                        color: Color(0XFFD9D9D9),
                        margin: EdgeInsets.symmetric(horizontal: 15),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ));
  }

  List items = [
    Items(name: 'mohamed', content: 'Thanks', numb: 3),
    Items(name: 'Ahmed', content: 'go to home', numb: 3),
    Items(name: 'Rizk', content: 'Thanks', numb: 2),
    Items(name: 'Yasmmen', content: 'Thanks', numb: 0),
    Items(name: 'Ahmed', content: 'Thanks', numb: 4),
    Items(name: 'Mahmoud', content: 'Thanks', numb: 0),
    Items(name: 'mohamed', content: 'Thanks', numb: 0),
    Items(name: 'mohamed', content: 'Thanks', numb: 0),
    Items(name: 'mohamed', content: 'Thanks', numb: 0),
    Items(name: 'mohamed', content: 'Thanks', numb: 0),
    Items(name: 'mohamed', content: 'Thanks', numb: 0),
    Items(name: 'mohamed', content: 'Thanks', numb: 4),
    Items(name: 'mohamed', content: 'Thanks', numb: 4),
    Items(name: 'mohamed', content: 'Thanks', numb: 5),
    Items(name: 'mohamed', content: 'Thanks', numb: 6),
    Items(name: 'mohamed', content: 'Thanks', numb: 0),
    Items(name: 'mohamed', content: 'Thanks', numb: 0),
  ];
}
