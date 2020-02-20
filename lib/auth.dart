import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';

abstract class BaseAuth {
  Future<String> signInwithEmailAndPassword(String email, String password);
}

class Auth implements BaseAuth {
  Future<String> signInwithEmailAndPassword(String email, String password) async {
    AuthResult user = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
    return user.user.uid;
  }
}