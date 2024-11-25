import 'package:flutter/material.dart';
import 'package:insta_weather/widgets/city_widget_listbuilder.dart';
import 'package:insta_weather/widgets/modalbottmsheet.dart';

class CustomWeathersheet extends StatelessWidget {
  const CustomWeathersheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.05,
      minChildSize: 0.05,
      maxChildSize: 1,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/BottomSheet.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                CityWidgetListBuilder(
                  controler: scrollController,
                ),
                Positioned(
                  right: 5,
                  top: 50,
                  child: FloatingActionButton(
                    backgroundColor: Colors.white,
                    shape: const CircleBorder(),
                    onPressed: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        context: context,
                        builder: (context) {
                          return const ModalBottomSheet();
                        },
                      );
                    },
                    child: const Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ));
      },
    );
  }
}
