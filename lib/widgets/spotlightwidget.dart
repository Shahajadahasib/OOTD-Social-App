import 'package:flutter/material.dart';

class SpotLightWidget extends StatelessWidget {
  const SpotLightWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 1.6,
      width: size.width - 10,
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Stack(
        alignment: Alignment.topCenter,
        // fit: StackFit.expand,
        children: [
          Positioned(
            top: 60,
            child: Material(
              elevation: 0,
              type: MaterialType.transparency,
              child: Image(
                width: size.width / 1,
                height: size.height / 2,
                image: AssetImage(
                  "assets/images/3.png",
                ),
              ),
            ),
          ),
          Positioned(
            top: 65,
            child: Material(
              type: MaterialType.transparency,
              child: Image(
                width: size.width / 1.6,
                height: size.height / 2.3,
                image: AssetImage(
                  "assets/images/2.png",
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: Image(
              image: AssetImage(
                "assets/images/1.png",
              ),
            ),
          ),
          Container(
            // color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height / 6,
                ),
                const Text(
                  "SPOTLIGHT",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  width: size.width / 1.7,
                  child: const Text(
                    "Explore OOTD’s near you and globally w/ SPOTLIGHT",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
