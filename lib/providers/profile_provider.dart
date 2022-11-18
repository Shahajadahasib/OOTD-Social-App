import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:ootd/model/user_model.dart';

class ProfileProvider with ChangeNotifier {
  List<UserModel> user = [];
  UserModel userModel = UserModel();

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
          lastName: element.get('secondName'),
        );
        newList.add(userModel);
      },
    );
    user = newList;
    log(user.toString());
    notifyListeners();
  }
}
