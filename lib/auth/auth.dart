import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Auth {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserCredential> regis(
      String email, String password, String fullName) async {
    try {
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Set data pengguna Firebase (termasuk nama) setelah registrasi berhasil
      await userCredential.user?.updateDisplayName(fullName);

      // Simpan nama ke SharedPreferences
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('email', email);
      prefs.setString('nama', fullName);

      return userCredential;
    } catch (error) {
      throw error;
    }
  }

  Future<void> login(String email, String password) async {
    final user = await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
}