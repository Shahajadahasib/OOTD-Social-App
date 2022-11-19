import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:ootd/model/user_model.dart';

class ProfileProvider with ChangeNotifier {
  List<UserModel> user = [];
  UserModel userModel = UserModel();
  TextEditingController _firstNameEditingController = TextEditingController();
  TextEditingController _lastNameEditingController = TextEditingController();
  TextEditingController _emainlcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  TextEditingController _repasswordEditingController = TextEditingController();

  TextEditingController get firstNameEditingController =>
      _firstNameEditingController;
  TextEditingController get lastNameEditingController =>
      _lastNameEditingController;
  TextEditingController get emailController => _emainlcontroller;
  TextEditingController get passwordcontroller => _passwordcontroller;
  TextEditingController get repasswordEditingController =>
      _repasswordEditingController;

  set firstNameEditingController(TextEditingController value) {
    _firstNameEditingController = value;
    notifyListeners();
  }

  set lastNameEditingController(TextEditingController value) {
    _lastNameEditingController = value;
    notifyListeners();
  }

  set emailController(TextEditingController value) {
    _emainlcontroller = value;
    notifyListeners();
  }

  set passwordcontroller(TextEditingController value) {
    _passwordcontroller = value;
    notifyListeners();
  }

  set repasswordEditingController(TextEditingController value) {
    _repasswordEditingController = value;
    notifyListeners();
  }

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
