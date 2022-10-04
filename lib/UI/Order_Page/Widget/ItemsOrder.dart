import 'package:flutter/material.dart';

class ItemsOrders extends StatelessWidget {
  String named;
  String imagepath;
  String cntent;

  ItemsOrders(
      {required this.named, required this.imagepath, required this.cntent});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        padding: const EdgeInsets.all(13),
        height: 90,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.white),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset(imagepath),
            const SizedBox(
              width: 12,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  named,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  cntent,
                  style: const TextStyle(fontSize: 13),
                )
              ],
            ),
            const Spacer(),
            InkWell(
              onTap: () {},
              child: Row(
                children: const [
                  Text('Details',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0XFF143360),
                      )),
                  SizedBox(
                    width: 3,
                  ),
                  Icon(Icons.keyboard_arrow_right_outlined,
                      size: 12, color: Color(0XFF143360)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
