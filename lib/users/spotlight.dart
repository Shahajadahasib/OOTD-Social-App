import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/spotlightwidget.dart';

class SpotLight extends StatefulWidget {
  const SpotLight({super.key});

  @override
  State<SpotLight> createState() => _SpotLightState();
}

class _SpotLightState extends State<SpotLight> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Align(
            widthFactor: 8,
            alignment: Alignment.topLeft,
            child: SvgPicture.asset(
              "assets/images/logo.svg",
              height: size.height / 35,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SpotLightWidget(),
        ],
      )),
    );
  }
}
