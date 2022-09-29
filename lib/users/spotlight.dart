import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ootd/widgets/searchbox.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
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
      body: SingleChildScrollView(
        dragStartBehavior: DragStartBehavior.down,
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
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
              SizedBox(
                height: size.height / 15,
              ),
              SearchBox(
                onchanged: (String value) {
                  print(value);
                },
              ),
              SizedBox(
                height: size.height / 15,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: size.height * .7,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.red,
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80"),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: size.height / 4,
                      left: 5,
                      child: Container(
                        height: size.height * .06,
                        width: size.width * .4,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80")),
                          borderRadius: BorderRadius.circular(20),
                          // color: Color.fromARGB(255, 198, 155, 152),
                          border: Border.all(
                            color: Colors.white,
                            width: 4,
                          ),
                        ),
                        child: Container(),
                      ),
                    ),
                    Positioned(
                      top: size.height / 2,
                      right: 30,
                      child: Container(
                        height: size.height * .1,
                        width: size.width * .2,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80")),
                          borderRadius: BorderRadius.circular(20),
                          // color: Color.fromARGB(255, 198, 155, 152),
                          border: Border.all(
                            color: Colors.white,
                            width: 4,
                          ),
                        ),
                        child: Container(),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: size.height / 3.6,
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/card.png"),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      height: size.height / 5,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Image(
                          height: 30,
                          image: AssetImage(
                            "assets/images/784.png",
                          ),
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.play_arrow_rounded,
                              size: 36,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.graphic_eq,
                            ),
                            Icon(
                              Icons.graphic_eq,
                            ),
                          ],
                        ),
                        const Image(
                          height: 50,
                          image: AssetImage(
                            "assets/images/person.png",
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
