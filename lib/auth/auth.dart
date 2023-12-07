import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Auth {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<UserCredential> regis(String email, String password, String fullName,
      String? profilePictureUrl) async {
    try {
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      await userCredential.user?.updateDisplayName(fullName);

      await _firestore.collection('users').doc(userCredential.user?.uid).set({
        'email': email,
        'fullName': fullName,
        'profilePictureUrl':
            profilePictureUrl ?? '', // Provide a default value if null
      });

      // Simpan nama ke SharedPreferences
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('email', email);
      prefs.setString('nama', fullName);
      prefs.setString('profilePictureUrl',
          profilePictureUrl!); // Pastikan url tidak null, dan pastikan bahwa ini adalah URL yang valid

      return userCredential;
    } catch (error) {
      rethrow;
    }
  }

  Future<void> login(String email, String password) async {
    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Ambil data pengguna dari Firestore
      DocumentSnapshot userDoc = await _firestore
          .collection('users')
          .doc(userCredential.user?.uid)
          .get();

      // Simpan data ke SharedPreferences
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('email', userDoc['email']);
      prefs.setString('nama', userDoc['fullName']);
    } catch (error) {
      rethrow;
    }
  }

  Future<UserCredential?> genre(List<String> pilihGenre) async {
    try {
      UserCredential userCredential = await _auth.signInAnonymously();

      // Perbarui dokumen pengguna di Firestore dengan genre yang dipilih
      await _firestore.collection('users').doc(userCredential.user?.uid).set({
        'pilihGenre': pilihGenre,
      });

      // Simpan email ke SharedPreferences
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('email', userCredential.user?.email ?? '');

      // Convert List<String> ke String dan simpan ke SharedPreferences
      String genreString = pilihGenre.join(',');
      await prefs.setString('pilihGenre', genreString);

      return userCredential;
    } catch (error) {
      print("Error: $error");
      return null;
    }
  }
}
