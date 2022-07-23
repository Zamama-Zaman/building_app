import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class FirebaseHelper {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<bool> signUpWithEmailAndPassword(String email, String password) async {
    try {
      final _user = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (_user != null) {
        print("I am called true");
        return true;
      } else {
        print("I am called false");
        return false;
      }
    } catch (e) {
      print("error : $e");
      return false;
    }
  }

  Future<bool> loginWithEmailAndPassword(String email, String password) async {
    try {
      final _user = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (_user != null) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print("error : $e");
      return false;
    }
  }
}
