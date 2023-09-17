import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeWidget extends StatefulWidget {
  final String imagepath;
  final Widget childWidget;
  HomeWidget({Key? key, required this.imagepath, required this.childWidget})
      : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Stack(
        children: [
          Image.asset(
            widget.imagepath,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Image.asset(
            'lib/assets/images/shader.png',
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 20,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  widget.childWidget,
                  Center(
                      child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            'lib/assets/images/arrow_down.svg',
                            color: Colors.white,
                            height: 20,
                            width: 20,
                          )))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
