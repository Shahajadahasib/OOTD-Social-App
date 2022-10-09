// import 'package:cloud_firestore/cloud_firestore.dart';

// class GlobalMethods{
//     getuserdata() async {
//     await FirebaseFirestore.instance
//         .collection("users")
//         .doc(FirebaseAuth.instance.currentUser!.uid)
//         .get()
//         .then((value) {
//       // log(value.data().toString());
//       _movies = UserModel.fromMap(value.data());
//       log(_movies.firstName.toString());
//       notifyListeners();
//     });
//   }
// }