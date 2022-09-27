import 'package:flutter/material.dart';

class Varification extends StatefulWidget {
  const Varification({super.key});

  @override
  State<Varification> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Varification> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
          // color: Colors.red,
          image: DecorationImage(
            fit: BoxFit.fitWidth,
            image: AssetImage('assets/images/back.png'),
          ),
        ),
        child: SafeArea(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 50,
                child: Container(
                  height: size.height * 0.84,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/hoverimage.png'))),
                  child: Column(
                    children: [
                      Container(
                        width: size.width - 10,
                        // color: Colors.red,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50),
                          child: Column(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Center(
                                    child: ImageIcon(
                                      size: 100,
                                      // color: Color(0xff05A841),
                                      AssetImage(
                                        "assets/images/output-onlinepngtools.png",
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height / 10,
                                  ),
                                  const Text(
                                    "Varification Successful",
                                    style: TextStyle(
                                        fontSize: 28,
                                        color: Color(
                                            0xffFF9EB5)), //color linier gradient #FF9EB5 100% #FFBD80 100%
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: size.width / 1.3,
                                    child: const Text(
                                      "Yessir yessir Your account has been fully verified let’s go customize your profile.",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height / 10,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Container(),
                                        ),
                                      );
                                    },
                                    child: Image(
                                        image: AssetImage(
                                            "assets/images/entericon.png")),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 18,
                right: size.width * 0.40,
                child: Image(
                  width: size.width / 4.5,
                  image: AssetImage('assets/images/logo.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
