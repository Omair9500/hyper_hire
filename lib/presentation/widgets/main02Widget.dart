import 'package:flutter/material.dart';

import 'homeWidget.dart';

class Main02Widget extends StatelessWidget {
  const Main02Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeWidget(
      imagepath: 'lib/assets/images/Main02.png',
      childWidget: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset(
                        'lib/assets/images/Star_bottom.png',
                        height: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '29,930',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              RichText(
                text: TextSpan(
                  text: '잭과분홍콩나물',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w700),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' 25',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              Text('서로 아껴주고 힘이 되어줄 사람 찾아요\n선릉으로 직장 다니고 있고 여행\n 좋아해요 이상한 이야기하시는\n분 바로 차단입니다',

                style: TextStyle(

                    color: Colors.grey.shade100,
                    fontSize: 12,
                    fontWeight: FontWeight.w300),)

            ],
          ),
          SizedBox(width: 20,),
          Container(
              margin: EdgeInsets.only(top: 60),
              child: Image.asset('lib/assets/images/fav.png',height: 50,)),

        ],
      ),


    );
  }
}
