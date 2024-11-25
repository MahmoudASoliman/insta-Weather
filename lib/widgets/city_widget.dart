import 'package:flutter/material.dart';
import 'package:insta_weather/widgets/custom_text_temp.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CityWidget extends StatelessWidget {
  const CityWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/Frame 2.png"),
        const Positioned(
          left: 20,
          top: 20,
          child: Skeletonizer(
            enabled: false,
            enableSwitchAnimation: true,
            effect: ShimmerEffect(baseColor: Colors.black),
            child: CustomTextTemp(
              tempC: "25",
            ),
          ),
        ),
        const Positioned(
          top: 100,
          left: 20,
          child: Text(
            "sunny",
            style: TextStyle(
              fontSize: 25,
              color: Color(0xFFBAD7E0),
            ),
          ),
        ),
        Positioned(
          right: 20,
          child: Image.network(
            "https://cdn.weatherapi.com/weather/64x64/day/116.png",
            scale: 0.4,
          ),
        ),
        const Positioned(
            bottom: 20,
            left: 25,
            child: Text(
              "cario",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ))
      ],
    );
  }
}
