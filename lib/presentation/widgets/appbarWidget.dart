import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
        top: 50,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset('lib/assets/images/location_top.png'),
          const SizedBox(
            width: 10,
          ),
          const Expanded(
            child: Text(
              '목이길어슬픈기린님의 새로운 스팟',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
              flex: 0,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(
                      color: Colors.grey.shade800,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    children: [
                      Image.asset('lib/assets/images/Star_top.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '33,232',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              )),
          const SizedBox(
            width: 10,
          ),
          Stack(children:  [
            Image.asset(
            'lib/assets/images/notification.png'
            ),
            Positioned(
              // draw a red marble
              top: 0.0,
              right: 0.0,
              left: 20,
              child:
                  Icon(Icons.brightness_1, size: 8.0, color: Colors.redAccent),
            )
          ]),
        ],
      ),
    );
  }
}
