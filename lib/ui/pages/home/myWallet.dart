// ignore_for_file: camel_case_types, prefer_const_constructors, file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutixapp/ui/pages/home/wallettopup.dart';
import 'package:flutixapp/ui/widgets/historyTopup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class myWallet extends StatefulWidget {
  const myWallet({Key? key}) : super(key: key);

  @override
  State<myWallet> createState() => _myWalletState();
}

class _myWalletState extends State<myWallet> {
  String id = FirebaseAuth.instance.currentUser!.uid;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<DocumentSnapshot>(
      future: FirebaseFirestore.instance.collection('users').doc(id).get(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(
              color: Color(0xFFE1A20B),
            ),
          );
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          int saldo = snapshot.data?.get('saldo') ?? 0;
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xFFE1A20B),
                    size: 32,
                  ),
                ),
              ),
              title: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  "My Wallet",
                  style: GoogleFonts.raleway(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
            body: ListView(
              padding: const EdgeInsets.all(20.0),
              children: [
                Container(
                  child: Stack(
                    children: [
                      ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.4),
                          BlendMode.darken,
                        ),
                        child: Container(
                          width: 320,
                          height: 150,
                          child: Image.asset(
                            "assets/images/wallet/wallet.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 90,
                        left: 20,
                        child: Text(
                          "IDR $saldo",
                          style: GoogleFonts.openSans(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 115,
                        left: 20,
                        bottom: 20,
                        child: Text(
                          "Available Balance",
                          style: GoogleFonts.raleway(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Recent Transaction",
                  style: GoogleFonts.raleway(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                HistoryTopUpList(id: id),
                SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => wallettopup()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFE1A20B),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      minimumSize: Size(200, 50),
                    ),
                    child: Text(
                      "Top Up Wallet",
                      style: GoogleFonts.raleway(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}