import 'package:flutter/material.dart';

import 'homeWidget.dart';

class Main01Widget extends StatelessWidget {
  const Main01Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     HomeWidget(
      imagepath: 'lib/assets/images/Main01.png',
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
              RichText(
                text: TextSpan(
                  text: '서울',
                  style: TextStyle(
                      color: Colors.grey.shade100,
                      fontSize: 15,
                      fontWeight: FontWeight.w300),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' 2km 거리에 있음',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),

            ],
          ),
          SizedBox(width: 30,),
          Container(
              margin: EdgeInsets.only(top: 60),
              child: Image.asset('lib/assets/images/fav.png',height: 50,)),

        ],
      ),


    );
  }
}
