import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ootd/globalmethods.dart';
import 'package:ootd/providers/profileservice.dart';
import 'package:provider/provider.dart';

import 'package:ootd/model/user_model.dart';

// final List<UserModel> initialDate = List.generate(
//   50,
//   (index) => UserModel(
//     uid: "Movie $index",
//   ),
// );
// final UserModel initialDate = UserModel(
//   uid: "uid",
//   email: "email",
//   firstName: "firstName",
//   secondName: "secondName",
//   image: "image",
// );

class ProfileProvider with ChangeNotifier {
  List<UserModel> user = [];
  UserModel userModel = UserModel();
  // String? email, firstname, lastname;

  // ProfileService profileService = ProfileService();
  // getuserdata(UserModel userModel) {
  //   email = userModel.email;
  //   return profileService;
  // }
  fatchUserData() async {
    List<UserModel> newList = [];
    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("users").get();
    value.docs.forEach(
      (element) {
        userModel = UserModel(
          uid: element.get('uid'),
          email: element.get('email'),
          firstName: element.get('firstName'),
          secondName: element.get('secondName'),
        );
        newList.add(userModel);
      },
    );
    user = newList;
    log(user.toString());
    notifyListeners();
  }
}
