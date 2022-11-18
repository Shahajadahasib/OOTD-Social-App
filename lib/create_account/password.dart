import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ootd/create_account/style.dart';
import 'package:ootd/model/user_model.dart';
import 'package:provider/provider.dart';

class CreateAcPassWord extends StatefulWidget {
  const CreateAcPassWord({super.key});

  @override
  State<CreateAcPassWord> createState() => _PassWordState();
}

bool isChecked = false;

class _PassWordState extends State<CreateAcPassWord> {
  @override
  Widget build(BuildContext context) {
    log("password");
    final size = MediaQuery.of(context).size;
    return ChangeNotifierProvider<UserModel>(
      create: (context) => UserModel(),
      child: Scaffold(
        body: Consumer<UserModel>(builder: (context, model, child) {
          return Container(
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
                              image:
                                  AssetImage('assets/images/hoverimage.png'))),
                      child: Form(
                        key: model.registerformKey,
                        child: Column(
                          children: [
                            Container(
                              width: size.width - 10,
                              // color: Colors.red,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 50),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: size.height / 3.5,
                                    ),
                                    TextField(
                                      controller:
                                          model.passwordEditingController,
                                      textAlign: TextAlign.center,
                                      decoration: const InputDecoration(
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: Color(0xff8E8B8B))),
                                        hintText: "Password",
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Color(0xff6A6767),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height / 25,
                                    ),
                                    TextFormField(
                                      controller:
                                          model.repasswordEditingController,
                                      textAlign: TextAlign.center,
                                      decoration: const InputDecoration(
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: Color(0xff8E8B8B))),
                                        hintText: "Confirm Password",
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Color(0xff6A6767),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height / 18,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        model.signUp(
                                          email:
                                              model.emailEditingController.text,
                                          password: model
                                              .passwordEditingController.text,
                                          context: context,
                                        );
                                        print(model.emailEditingController
                                            .toString());
                                        print(model.passwordEditingController
                                            .toString());
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const StylePage(),
                                          ),
                                        );
                                      },
                                      child: const Image(
                                        image: AssetImage(
                                          "assets/images/784.png",
                                          // cacheColorFilter: true,

                                          // colorBlendMode: BlendMode.srcIn,
                                          // width: size.width / 8,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Checkbox(
                                          activeColor: Colors
                                              .blue, //The color to use when this checkbox is checked.
                                          checkColor: Colors
                                              .white, // The color to use for the check icon when this checkbox is checked.
                                          value: isChecked,
                                          onChanged: (value) {
                                            setState(() {
                                              isChecked = value!;
                                            });
                                          },
                                        ),
                                        Expanded(
                                          child: RichText(
                                            maxLines: 2,
                                            text: const TextSpan(
                                              text: 'I agree to the ',
                                              style: TextStyle(
                                                color: Color(0xff404040),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                              ),
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: 'Terms & Conditions ',
                                                  style: TextStyle(
                                                      color: Colors.blue,
                                                      fontSize: 14),
                                                ),
                                                TextSpan(
                                                  text: "and ",
                                                  style:
                                                      TextStyle(fontSize: 14),
                                                ),
                                                TextSpan(
                                                  text: 'Privacy Policy',
                                                  style: TextStyle(
                                                    color: Colors.blue,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                        // const Text("I agree to the ")
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
                  ),
                  Positioned(
                    top: 18,
                    right: size.width * 0.40,
                    child: SvgPicture.asset(
                      'assets/images/logo.svg',
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
