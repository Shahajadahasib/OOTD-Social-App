import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ootd/create_account/password.dart';
import 'package:provider/provider.dart';

import '../model/user_model.dart';
import '../providers/profile_provider.dart';

class CreateAcUsername extends StatefulWidget {
  const CreateAcUsername({super.key});

  @override
  State<CreateAcUsername> createState() => _SignUpState();
}

bool isChecked = false;

class _SignUpState extends State<CreateAcUsername> {
  @override
  Widget build(BuildContext context) {
    log("username");
    final size = MediaQuery.of(context).size;
    return ChangeNotifierProvider<UserModel>(
      create: (context) => UserModel(),
      child: Scaffold(
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
          child: Consumer<UserModel>(builder: (context, model, child) {
            return SafeArea(
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
                      child: Column(
                        children: [
                          Container(
                            width: size.width - 10,
                            // color: Colors.red,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 50),
                              child: Form(
                                key: model.registerformKey,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: size.height / 3,
                                    ),
                                    TextFormField(
                                      controller: context
                                          .read<ProfileProvider>()
                                          .firstNameEditingController,
                                      textAlign: TextAlign.center,
                                      decoration: const InputDecoration(
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: Color(0xff8E8B8B))),
                                        hintText: "Username",
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Color(0xff6A6767),
                                        ),
                                      ),
                                      onSaved: (value) {
                                        model.firstNameEditingController.text =
                                            value!;
                                      },
                                    ),
                                    SizedBox(
                                      height: size.height / 20,
                                    ),
                                    TextFormField(
                                      controller: context
                                          .read<ProfileProvider>()
                                          .lastNameEditingController,
                                      textAlign: TextAlign.center,
                                      decoration: const InputDecoration(
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: Color(0xff8E8B8B))),
                                        hintText: "Last name",
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Color(0xff6A6767),
                                        ),
                                      ),
                                      onSaved: (value) {
                                        model.lastNameEditingController.text =
                                            value!;
                                      },
                                    ),
                                    SizedBox(
                                      height: size.height / 10,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const CreateAcPassWord()),
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
                                  ],
                                ),
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
                    child: SvgPicture.asset(
                      'assets/images/logo.svg',
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
