import 'package:flutter/material.dart';
import 'package:testepoke/view/tablet.dart';
import '../view/desktop.dart';
import '../view/mobile.dart';

double deviceSize(BuildContext, context) => MediaQuery.of(context).size.width;

class Home_Treatment extends StatelessWidget {

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 800;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 800 &&
          MediaQuery.of(context).size.width <= 1200;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > 1200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: isDesktop(context)
                  ? Desktop()
                  : isTablet(context)
                  ? Tablet()
                  : Mobile(),
            ),
          ],
        )
    );
  }
}
