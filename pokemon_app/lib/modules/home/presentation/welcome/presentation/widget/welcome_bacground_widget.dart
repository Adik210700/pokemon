import 'package:flutter/material.dart';

class WelcomeBacgroundWidget extends StatelessWidget {
  const WelcomeBacgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(),
        Container(
          height: 0.1,
          width: 0.1,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.3),
              spreadRadius: 160,
              blurRadius: 160,
            ),
          ]),
        ),
        Positioned(
          top: 300,
          right: 0,
          child: Container(
            height: 0.1,
            width: 0.1,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.orange.withOpacity(0.3),
                spreadRadius: 200,
                blurRadius: 200,
              ),
            ]),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            height: 0.1,
            width: 0.1,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.red.withOpacity(0.3),
                spreadRadius: 200,
                blurRadius: 200,
              ),
            ]),
          ),
        )
      ],
    );
  }
}
