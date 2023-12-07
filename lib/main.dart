// ignore_for_file: unused_import

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutixapp/firebase_options.dart';
import 'package:flutixapp/providers/walletBalance.dart';
import 'package:flutixapp/ui/pages/home/home.dart';
import 'package:flutixapp/ui/pages/home/seat.dart';
import 'package:flutixapp/ui/pages/splash_screen/confirmation.dart';
import 'package:flutixapp/ui/pages/splash_screen/sign_in.dart';
import 'package:flutixapp/ui/pages/splash_screen/sign_up.dart';
import 'package:flutixapp/ui/pages/splash_screen/splash-screen.dart';
import 'package:flutixapp/ui/pages/splash_screen/user_profile.dart';
import 'package:flutixapp/ui/widgets/bottomnav.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    ChangeNotifierProvider(
      create: (context) => WalletBalance(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutixApp',
      debugShowCheckedModeBanner: false,

      home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return BottomNav();
          } else {
            return splash();
          }
        },
      ),
    );
  }
}
