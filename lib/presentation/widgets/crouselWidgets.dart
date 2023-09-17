


import 'package:flutter/material.dart';

class CrouselWidgets extends StatefulWidget {
  final List<Widget>childWidget;
  const CrouselWidgets({Key? key, required this.childWidget}) : super(key: key);

  @override
  State<CrouselWidgets> createState() => _CrouselWidgetsState();
}

class _CrouselWidgetsState extends State<CrouselWidgets> {
  int _current = 0;
   PageController _controller=PageController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child:
          GestureDetector(
            child: PageView(
              padEnds:true,
            controller: _controller,
              children: widget.childWidget,
              physics: NeverScrollableScrollPhysics(),
              pageSnapping: true,
              onPageChanged: (index) {
                setState(() {
                  _current = index;
                });
              },
            ),
          ),
        ),

              Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: widget.childWidget
            .asMap()
            .entries
            .map((entry) {
          return GestureDetector(
            onTap: () => _controller.animateToPage(entry.key,duration: const Duration(milliseconds: 400),
              curve: Curves.ease,),
            child: Container(
              width: 50.0,
              height: 5.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                    Radius.circular(10.0)),
                color: _current == entry.key
                  ?Color.fromRGBO(255, 0, 107, 1)
                  : Color.fromRGBO(32, 32, 32, 1))
                 ,
              ),


          );
        }).toList(),
      ),

    ]);
  }
}
