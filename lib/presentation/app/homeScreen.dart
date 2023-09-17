import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../widgets/widget.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<dynamic> list = [1, 2, 3];
  List<Widget> widgetLists = [
    Main01Widget(),
    Main02Widget(),
    Main03Widget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: AppBarWidget(),
        ),
        backgroundColor: Colors.grey.shade900,
        body: Builder(
          builder: (context) {
            final double height = MediaQuery.of(context).size.height;

            return Container(
              margin: const EdgeInsets.only(top: 20, bottom: 50),
              child: CarouselSlider(
                options: CarouselOptions(
                    height: height,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    initialPage: 1,
                    autoPlay: false,
                    scrollPhysics: ScrollPhysics(),
                    scrollDirection: Axis.horizontal
                    // autoPlay: false,
                    ),
                items: list
                    .map((item) => Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: CrouselWidgets(
                          childWidget: widgetLists,
                        )))
                    .toList(),
              ),
            );
          },
        ));
  }
}
