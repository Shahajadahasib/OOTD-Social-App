import 'dart:io';
import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ootd/widgets/searchbox.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import '../widgets/spotlightwidget.dart';

class SpotLight extends StatefulWidget {
  const SpotLight({super.key});

  @override
  State<SpotLight> createState() => _SpotLightState();
}

class _SpotLightState extends State<SpotLight> {
  File? _image;
  Future selectfile() async {
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      imageQuality: 50,
    );
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        // log('No image Selected');
      }
    });

    //   // Upload file
    // final ref = firebasestorage
    //     .ref('profileimages')
    //     .child(firebaseauth.currentUser!.uid);
    // UploadTask uploadTask = ref.putFile(_image!.absolute);

    // await Future.value(uploadTask);
    // var imageurl = await ref.getDownloadURL();

    // final followersdata = await firestore
    //     .collection('users')
    //     .doc(firebaseauth.currentUser!.uid)
    //     .get();

    // UserModel user = UserModel(
    //   firstname: followersdata.get('firstname'),
    //   lastname: followersdata.get('lastname'),
    //   email: followersdata.get('email'),
    //   phone: followersdata.get('phone'),
    //   uid: followersdata.get('uid'),
    //   profilePhoto: imageurl,
    //   followers: followersdata.get('followers'),
    //   following: followersdata.get('following'),
    //   recordings: followersdata.get('recordings'),
    // );
    // await firestore
    //     .collection('users')
    //     .doc(firebaseauth.currentUser!.uid)
    //     .set(user.toJson());
  }

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
              GestureDetector(
                onTap: () {
                  selectfile();
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  // height: size.height * .7,
                  // width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.red,

                    // image: const DecorationImage(
                    //   fit: BoxFit.cover,
                    //   image: NetworkImage(""),

                    // ),

                    borderRadius: BorderRadius.circular(20),
                    // image: DecorationImage(
                    //   image: Image.file(_image!.absolute)
                    // )
                  ),
                  child: Stack(
                    // fit: StackFit.loose,
                    children: [
                      _image != null
                          ? Expanded(
                              child: Image.file(
                                _image!.absolute,
                                height: size.height * .7,
                                width: size.width,
                                fit: BoxFit.contain,
                              ),
                            )
                          : Expanded(
                              child: SizedBox(
                              height: size.height * .7,
                              width: size.width,
                            )),
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
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15.0),
                                    topRight: Radius.circular(15.0)),
                              ),
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 20),
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                          AssetImage("assets/images/card.png"),
                                    ),
                                    borderRadius: BorderRadius.circular(
                                        10), // radius of 10
                                    // green as background color
                                  ),
                                  height: size.height / 3.5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            height: size.height / 25,
                                            width: size.width / 3,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                color: Color.fromARGB(
                                                    255, 193, 213, 222)),
                                            child: const Text(
                                              textAlign: TextAlign.center,
                                              'VISIT PROFILE',
                                              style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xffFFFFFF),
                                              ),
                                            ),
                                          ),
                                          const Image(
                                            height: 40,
                                            image: AssetImage(
                                              "assets/images/784.png",
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image(
                                            width: size.width / 4,
                                            image: const AssetImage(
                                              "assets/images/Profile.png",
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 15,
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
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        "MARIA SALEENAY",
                                        style: TextStyle(
                                            fontSize: 34,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          child: const Image(
                            height: 50,
                            image: AssetImage(
                              "assets/images/person.png",
                            ),
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

//   _bottomSheet(context) {
//     final size = MediaQuery.of(context).size;
//     showModalBottomSheet(
//       context: context,
//       builder: (BuildContext context) {
//         return Container(
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10), // radius of 10
//               color: Colors.green // green as background color
//               ),
//           height: size.height / 3.5,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [Text('data')],
//           ),
//         );
//       },
//     );
//   }
}
