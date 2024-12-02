import 'package:flutter/material.dart';
import 'dart:math';

class ImmutableWidget extends StatelessWidget{
  const ImmutableWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient:RadialGradient(

          radius: 0.8,
          colors: [
            Color.fromARGB(255, 128, 199, 110),
            Color.fromARGB(255, 36, 80, 37),
          ],
          ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(70),
        child: Transform.rotate(
          angle: pi/4,
          child: Container(
            decoration: const BoxDecoration(
              gradient: RadialGradient(colors: [
                Colors.purpleAccent,
                Colors.purple,
              ]
              ),
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
              boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.4),
                    blurRadius: 10, 
                    spreadRadius: 10,
                    offset: Offset(15, 21),
                  ),
                ],
            ),
          child: Padding(
            padding: const EdgeInsets.all(50.0),
             child:_buildShinyCircle(),
          ),
        ),
        )
      ),
    );
  }
  Widget _buildShinyCircle() {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [
            Colors.lightBlueAccent,
            Colors.blueAccent,
          ],
          center: Alignment(-0.3, -0.5),
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 30,
            spreadRadius: 6),
        ],
      ),
    );
  }
}
