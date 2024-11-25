import 'package:flutter/material.dart';
import 'package:insta_weather/widgets/city_widget.dart';

class CityWidgetListBuilder extends StatelessWidget {
  const CityWidgetListBuilder({
    super.key,
    required this.controler,
  });

  final dynamic controler;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        controller: controler,
        itemCount: 2,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(
              left: 16,
              top: 50,
            ),
            child: CityWidget(),
          );
        },
      ),
    );
  }
}
