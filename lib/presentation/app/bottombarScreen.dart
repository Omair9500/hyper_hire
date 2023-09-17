import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hyperhire_app/presentation/app/homeScreen.dart';

class BottomBarScreen extends StatefulWidget {
  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int selectedpage = 0;
  final _pageNo = [
    HomeScreen(),
    Container(),
    Container(),
    Container(),
    Container()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageNo[selectedpage],
      bottomNavigationBar: ConvexAppBar(
        activeColor: Color.fromRGBO(255, 1, 107, 1),
        style: TabStyle.fixedCircle,
        shadowColor: Colors.grey,
        color: Colors.grey,
        backgroundColor: Colors.black,
        items: [
          TabItem(
              icon: SvgPicture.asset(
                'lib/assets/images/home_tab.svg',
                height: 50,
                width: 50,
                color: selectedpage == 0
                    ? Color.fromRGBO(255, 1, 107, 1)
                    : Colors.grey,
              ),
              title: '홈'),
          TabItem(
              icon: SvgPicture.asset(
                'lib/assets/images/loc_tab.svg',
                color: selectedpage == 1
                    ? Color.fromRGBO(255, 1, 107, 1)
                    : Colors.grey,
              ),
              title: '스팟'),
          TabItem(
              icon: Image.asset('lib/assets/images/star_tab.png'),
              title: 'Cart'),
          TabItem(
              icon: SvgPicture.asset(
                'lib/assets/images/chat_tab.svg',
                color: selectedpage == 3
                    ? Color.fromRGBO(255, 1, 107, 1)
                    : Colors.grey,
              ),
              title: '채팅'),
          TabItem(
              icon: SvgPicture.asset(
                'lib/assets/images/profile_tab.svg',
                color: selectedpage == 4
                    ? Color.fromRGBO(255, 1, 107, 1)
                    : Colors.grey,
              ),
              title: '마이'),
        ],
        initialActiveIndex: selectedpage,
        onTap: (int index) {
          setState(() {
            selectedpage = index;
          });
        },
      ),
    );
  }
}
