import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ClickSpotlight extends StatefulWidget {
  const ClickSpotlight({super.key});

  @override
  State<ClickSpotlight> createState() => _ClickSpotlightState();
}

class _ClickSpotlightState extends State<ClickSpotlight> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Container(
        // color: Colors.red,
        height: size.height / 1,
        width: size.width / 1,
        // margin: EdgeInsets.symmetric(horizontal: 5),
        child: Stack(
          alignment: Alignment.topCenter,
          fit: StackFit.loose,
          children: [
            Positioned(
              bottom: 0,
              child: Image(
                height: size.height / 4,
                width: size.width,
                fit: BoxFit.cover,
                image: const AssetImage('assets/images/left.png'),
              ),
            ),
            Container(
              height: size.height / 1.38,
              width: size.width,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    "https://static.vecteezy.com/packs/media/vectors/term-bg-1-666de2d9.jpg",
                  ),
                ),
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              // child: const Text("ssdsds"),
            ),

            Positioned(
              top: 50,
              right: 40,
              child: Material(
                elevation: 0,
                type: MaterialType.transparency,
                child: Image(
                  height: size.height / 20,
                  image: const AssetImage(
                    "assets/images/782.png",
                  ),
                ),
              ),
            ),

            Positioned(
                top: 50,
                left: 40,
                child: Row(
                  children: const [
                    Icon(
                      Icons.play_arrow_rounded,
                      size: 40,
                    ),
                    Icon(
                      Icons.graphic_eq_outlined,
                      size: 35,
                    ),
                    Icon(
                      Icons.graphic_eq_outlined,
                      size: 35,
                    ),
                    Icon(
                      Icons.graphic_eq_outlined,
                      size: 35,
                    ),
                  ],
                )),

            Positioned(
              bottom: 100,
              child: Material(
                type: MaterialType.transparency,
                child: Container(
                  height: size.height / 5.5,
                  child: SfRadialGauge(
                    axes: <RadialAxis>[
                      RadialAxis(
                        minimum: 0,
                        maximum: 20,
                        showLabels: false,
                        showTicks: false,
                        axisLineStyle: const AxisLineStyle(
                          thickness: 0.2,
                          cornerStyle: CornerStyle.bothCurve,
                          color: Colors.white70,
                          thicknessUnit: GaugeSizeUnit.factor,
                        ),
                        pointers: const <GaugePointer>[
                          RangePointer(
                            gradient: SweepGradient(colors: [
                              Color(0xff849FFF),
                              // Color(0xffFAEAA5),

                              Color.fromARGB(255, 173, 185, 179),
                              Color(0xff849FFF),

                              Color(0xff849FFF),
                              Color(0xff849FFF),
                              Color(0xff849FFF),
                              Color.fromARGB(255, 47, 255, 231),
                              Color.fromARGB(255, 21, 224, 160),
                            ]),
                            value: 18,
                            cornerStyle: CornerStyle.bothCurve,
                            width: 0.2,
                            sizeUnit: GaugeSizeUnit.factor,
                          ),
                        ],
                        annotations: <GaugeAnnotation>[
                          GaugeAnnotation(
                            positionFactor:
                                0.0, //this value change the profile pic location
                            angle: 90,
                            widget: Image(
                                width: size.width / 5,
                                image: const AssetImage(
                                    "assets/images/Profile.png")),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Positioned(
              bottom: 0,
              child: Row(
                children: [
                  const Image(
                    height: 50,
                    image: AssetImage(
                      "assets/images/person.png",
                    ),
                  ),
                  Text(
                    'SPOTLIGHT',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      foreground: Paint()
                        ..shader = const LinearGradient(
                          colors: <Color>[
                            Color(0xffFFBD80),
                            Color.fromARGB(255, 255, 255, 255),
                          ],
                        ).createShader(
                          const Rect.fromLTWH(
                            80.0, //left
                            707.0, //top
                            248.0, //width
                            26.0, //height
                          ),
                        ),
                    ),
                  ),
                ],
              ),
            ),
            // color: Colors.red,
            // child: Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     SizedBox(
            //       height: size.height / 6,
            //     ),
            //     const Text(
            //       "SPOTLIGHT",
            //       style: TextStyle(
            //         fontWeight: FontWeight.w700,
            //         fontSize: 24,
            //         color: Colors.white,
            //       ),
            //     ),
            //     const SizedBox(
            //       height: 40,
            //     ),
            //     Container(
            //       width: size.width / 1.7,
            //       child: const Text(
            //         "Explore OOTD’s near you and globally w/ SPOTLIGHT",
            //         style: TextStyle(
            //           fontWeight: FontWeight.w700,
            //           fontSize: 12,
            //           color: Colors.white,
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      )),
    );
  }
}
