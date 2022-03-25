// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';

abstract class FirebaseRemoteDataSource {
  Future<void> signIn();
  Future<void> signOut();
  Future<bool> isSignedIn();
}

class FirebaseRemoteDataSourceImpl implements FirebaseRemoteDataSource {
  // final FirebaseAuth _auth;
  // final FirebaseFirestore _firestore;

  FirebaseRemoteDataSourceImpl();

  @override
  Future<void> signIn() async {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() async {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<bool> isSignedIn() async {
    // TODO: implement isSignedIn
    throw UnimplementedError();
  }
}
