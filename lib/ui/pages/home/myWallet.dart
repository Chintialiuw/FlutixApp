// ignore_for_file: camel_case_types, prefer_const_constructors, file_names

import 'package:flutixapp/ui/pages/home/wallettopup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'profile.dart';

class myWallet extends StatefulWidget {
  const myWallet({super.key});

  @override
  State<myWallet> createState() => _myWalletState();
}

class _myWalletState extends State<myWallet> {
  @override
  Widget build(BuildContext context) {
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
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 276,
                        height: 131,
                        margin: const EdgeInsets.only(top: 20, left: 20),
                        child:
                            Image.asset("images/wallet.png", fit: BoxFit.fill),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Recent Transaction",
                      style: GoogleFonts.raleway(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 75,
                            height: 100,
                            margin: const EdgeInsets.only(
                               top: 20, bottom: 20),
                            child: Image.asset("images/card/Carl's-date.png",
                                fit: BoxFit.fill),
                          ),
                        ),
                        TextButton(onPressed: () {}, child: Text("Carl's Date", style: GoogleFonts.raleway(
                          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                    ),)
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 75,
                            height: 100,
                            margin: const EdgeInsets.only(bottom: 20),
                            child: Image.asset("images/card/Carl's-date.png",
                                fit: BoxFit.fill),
                          ),
                        ),
                        TextButton(onPressed: () {}, child: Text("Carl's Date", style: GoogleFonts.raleway(
                          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                    ),)
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 75,
                            height: 100,
                            margin: const EdgeInsets.only(bottom: 20),
                            child: Image.asset("images/card/Carl's-date.png",
                                fit: BoxFit.fill),
                          ),
                        ),
                        TextButton(onPressed: () {}, child: Text("Carl's Date", style: GoogleFonts.raleway(
                          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                    ),)
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 75,
                            height: 100,
                            margin: const EdgeInsets.only(bottom: 20),
                            child: Image.asset("images/card/Carl's-date.png",
                                fit: BoxFit.fill),
                          ),
                        ),
                        TextButton(onPressed: () {}, child: Text("Carl's Date", style: GoogleFonts.raleway(
                          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                    ),)
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 75,
                            height: 100,
                            margin: const EdgeInsets.only(bottom: 20),
                            child: Image.asset("images/card/Carl's-date.png",
                                fit: BoxFit.fill),
                          ),
                        ),
                        TextButton(onPressed: () {}, child: Text("Carl's Date", style: GoogleFonts.raleway(
                          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                    ),)
                      ],
                    ),
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
