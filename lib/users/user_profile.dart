import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../providers/profile_provider.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  ProfileProvider userProvider = ProfileProvider();
  @override
  void initState() {
    ProfileProvider userProvider = Provider.of(context, listen: false);
    userProvider.fatchUserData();
    // log(userProvider.userModel.email.toString());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    userProvider = Provider.of(
      context,
    );
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 30,
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
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.edit,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                          width: size.width / 5,
                          image: const AssetImage("assets/images/Profile.png")),
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
                ),
                Text(
                  userProvider.userModel.firstName.toString(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w500),
                ),
                const Text('CASUAL',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500)),
                SizedBox(
                  height: 10,
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                //   children: [
                //     const Image(
                //       height: 30,
                //       image: AssetImage(
                //         "assets/images/784.png",
                //       ),
                //     ),
                //     InkWell(
                //       onTap: () {
                //         showModalBottomSheet(
                //           backgroundColor: Colors.transparent,
                //           shape: const RoundedRectangleBorder(
                //             borderRadius: BorderRadius.only(
                //                 topLeft: Radius.circular(15.0),
                //                 topRight: Radius.circular(15.0)),
                //           ),
                //           context: context,
                //           builder: (BuildContext context) {
                //             return Container(
                //               margin: const EdgeInsets.symmetric(
                //                   horizontal: 15, vertical: 20),
                //               decoration: BoxDecoration(
                //                 image: const DecorationImage(
                //                   fit: BoxFit.cover,
                //                   image: AssetImage("assets/images/card.png"),
                //                 ),
                //                 borderRadius:
                //                     BorderRadius.circular(10), // radius of 10
                //                 // green as background color
                //               ),
                //               height: size.height / 3.5,
                //               child: Column(
                //                 crossAxisAlignment: CrossAxisAlignment.center,
                //                 children: [
                //                   const SizedBox(
                //                     height: 20,
                //                   ),
                //                   Row(
                //                     mainAxisAlignment:
                //                         MainAxisAlignment.spaceAround,
                //                     children: [
                //                       Container(
                //                         alignment: Alignment.center,
                //                         height: size.height / 25,
                //                         width: size.width / 3,
                //                         decoration: BoxDecoration(
                //                             borderRadius:
                //                                 BorderRadius.circular(15),
                //                             color: Color.fromARGB(
                //                                 255, 193, 213, 222)),
                //                         child: const Text(
                //                           textAlign: TextAlign.center,
                //                           'VISIT PROFILE',
                //                           style: TextStyle(
                //                             fontSize: 13,
                //                             fontWeight: FontWeight.w700,
                //                             color: Color(0xffFFFFFF),
                //                           ),
                //                         ),
                //                       ),
                //                     ],
                //                   ),
                //                   const SizedBox(
                //                     height: 10,
                //                   ),
                //                   Row(
                //                     mainAxisAlignment: MainAxisAlignment.center,
                //                     children: [
                //                       Image(
                //                         width: size.width / 4,
                //                         image: const AssetImage(
                //                           "assets/images/Profile.png",
                //                         ),
                //                       ),
                //                       const SizedBox(
                //                         width: 15,
                //                       ),
                //                       Row(
                //                         children: const [
                //                           Icon(
                //                             Icons.play_arrow_rounded,
                //                             size: 36,
                //                           ),
                //                           SizedBox(
                //                             width: 10,
                //                           ),
                //                           Icon(
                //                             Icons.graphic_eq,
                //                           ),
                //                           Icon(
                //                             Icons.graphic_eq,
                //                           ),
                //                         ],
                //                       ),
                //                     ],
                //                   ),
                //                   SizedBox(
                //                     height: 10,
                //                   ),
                //                   const Text(
                //                     "MARIA SALEENAY",
                //                     style: TextStyle(
                //                         fontSize: 34,
                //                         fontWeight: FontWeight.w700,
                //                         color: Colors.white),
                //                   )
                //                 ],
                //               ),
                //             );
                //           },
                //         );
                //       },

                //     ),
                //   ],
                // )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
