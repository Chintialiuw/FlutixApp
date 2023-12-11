import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutixapp/ui/pages/splash_screen/user_profile.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Auth {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<int> getSaldo(String userId) async {
    try {
      DocumentSnapshot userDoc =
          await _firestore.collection('users').doc(userId).get();
      return userDoc['saldo'] ?? 0;
    } catch (error) {
      rethrow;
    }
  }

  Future<UserCredential> regis(String email, String password, String fullName,
      String? profilePictureUrl, int saldo) async {
    try {
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      await userCredential.user?.updateDisplayName(fullName);

      await _firestore.collection('users').doc(userCredential.user?.uid).set({
        'email': email,
        'fullName': fullName,
        'profilePictureUrl': profilePictureUrl ?? '',
        'saldo': saldo
      });

      // Simpan nama dan saldo ke SharedPreferences
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('email', email);
      prefs.setString('nama', fullName);
      prefs.setString('profilePictureUrl', profilePictureUrl ?? '');
      prefs.setInt("saldo", saldo);

      // Update saldo di SharedPreferences
      await prefs.setInt("saldo", saldo);

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

      // Update saldo di SharedPreferences
      int saldo = userDoc['saldo'] ?? 0;
      prefs.setInt("saldo", saldo);
    } catch (error) {
      rethrow;
    }
  }

  // Fungsi untuk menyimpan preferensi ke Firestore
  Future<void> savePreferences(
      List<MovieGenre> genrePref, List<MovieLanguage> languagePref) async {
    try {
      // Ambil user saat ini
      User? user = _auth.currentUser;

      if (user != null) {
        // Menyimpan preferensi ke Firestore di koleksi users
        await _firestore.collection('users').doc(user.uid).update({
          'genrePref': genrePref
              .map((genre) => genre.toString().split('.').last)
              .toList(),
          'languagePref': languagePref
              .map((language) => language.toString().split('.').last)
              .toList(),
        });
      } else {
        throw Exception("User not signed in.");
      }
    } catch (error) {
      rethrow;
    }
  }

  // Fungsi untuk mendapatkan preferensi dari Firestore
  Future<Map<String, dynamic>> getPreferences(String userId) async {
    try {
      // Mengambil preferensi dari Firestore
      DocumentSnapshot prefDoc =
          await _firestore.collection('users').doc(userId).get();

      // Mengembalikan preferensi dalam bentuk Map
      return prefDoc.data() as Map<String, dynamic>;
    } catch (error) {
      rethrow;
    }
  }
}
