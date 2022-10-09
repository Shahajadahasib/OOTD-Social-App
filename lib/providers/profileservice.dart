import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ootd/model/user_model.dart';

// class ProfileService {
//   final firestoreService = FirebaseFirestore.instance;

// //create or save book to db
//   // // Future<void> getuserdata(UserModel user) async {
//   // //   final data = FirebaseFirestore.instance
//   // //       .collection("users")
//   // //       .doc(FirebaseAuth.instance.currentUser!.uid)
//   // //       .get()
//   // //       .then((value) {});
//   // //   log(user.email.toString());
//   // }
//   Stream<List<UserModel>> getuserdata() {
//     return firestoreService.collection('users').snapshots().map((snapshots) =>
//         snapshots.docs
//             .map((document) => UserModel.formFireStore(document.data()))
//             .toList(growable: true));
//   }
// }
