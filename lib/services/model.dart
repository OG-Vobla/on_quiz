import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

CollectionReference users = FirebaseFirestore.instance.collection('users');

class UserModel {
  String? id;

  UserModel.fromFirebase(User user) {
    id = user.uid;
  }
}
