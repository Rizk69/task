import 'package:flutter/material.dart';
import 'package:task/UI/Order_Page/Widget/Buttom.dart';

class OrdersDetails extends StatelessWidget {
  static const String routeName = 'Details';
  String? named;
  String? imagePath;
  String? content;

  OrdersDetails({this.named, this.imagePath, this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF5F5F5),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Color(0XFF282828),
            )),
        backgroundColor: Colors.white,
        title: const Text(
          'Orders Detales',
          style: TextStyle(
              color: Color(0XFF282828),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              imagePath!,
              alignment: AlignmentDirectional.topCenter,
              height: 120,
            ),
            const SizedBox(
              height: 13,
            ),
            Text(
              named!,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Icon(
                  Icons.settings_sharp,
                  color: Color(0XFFF18F15),
                  size: 16,
                ),
                const SizedBox(
                  width: 3,
                ),
                const Text(
                  'service type: ',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Text(
                  content!,
                  style: const TextStyle(fontSize: 14),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                ImageIcon(
                    AssetImage('assets/74437e6672edf9ddc0a10b90f1612205 1.png'),
                    size: 16,
                    color: Color(0XFFF18F15)),
                SizedBox(
                  width: 3,
                ),
                Text(
                  'description :',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height * 0.44,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Image.asset(
                    'assets/download 1 (1).png',
                    height: 120,
                    width: 185,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    't is a long established content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose injected humour and the like',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Buttoms(
                    color: const Color(0XFF143360),
                    namedButtom: 'REFUSE',
                    callBack: () {}),
                Buttoms(
                  color: const Color(0XFFF18F15),
                  namedButtom: 'ACCEPT',
                  callBack: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
