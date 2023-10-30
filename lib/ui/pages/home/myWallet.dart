// ignore_for_file: camel_case_types, prefer_const_constructors, file_names

import 'package:flutixapp/ui/pages/home/wallettopup.dart';
import 'package:flutter/material.dart';

class myWallet extends StatefulWidget {
  const myWallet({super.key});

  @override
  State<myWallet> createState() => _myWalletState();
}

class _myWalletState extends State<myWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      "My Wallet",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
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
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: Text(
                        "Recent Transaction",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal),
                      ),
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 75,
                            height: 100,
                            margin: const EdgeInsets.only(
                                left: 20, top: 20, bottom: 20),
                            child: Image.asset("images/card/Carl's-date.png",
                                fit: BoxFit.fill),
                          ),
                        ),
                        TextButton(onPressed: () {}, child: Text("Carl's Date"))
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 75,
                            height: 100,
                            margin: const EdgeInsets.only(left: 20, bottom: 20),
                            child: Image.asset("images/card/Carl's-date.png",
                                fit: BoxFit.fill),
                          ),
                        ),
                        TextButton(onPressed: () {}, child: Text("Carl's Date"))
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 75,
                            height: 100,
                            margin: const EdgeInsets.only(left: 20, bottom: 20),
                            child: Image.asset("images/card/Carl's-date.png",
                                fit: BoxFit.fill),
                          ),
                        ),
                        TextButton(onPressed: () {}, child: Text("Carl's Date"))
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 75,
                            height: 100,
                            margin: const EdgeInsets.only(left: 20, bottom: 20),
                            child: Image.asset("images/card/Carl's-date.png",
                                fit: BoxFit.fill),
                          ),
                        ),
                        TextButton(onPressed: () {}, child: Text("Carl's Date"))
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 75,
                            height: 100,
                            margin: const EdgeInsets.only(left: 20, bottom: 20),
                            child: Image.asset("images/card/Carl's-date.png",
                                fit: BoxFit.fill),
                          ),
                        ),
                        TextButton(onPressed: () {}, child: Text("Carl's Date"))
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => wallettopup()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 26, 18, 11),
                          foregroundColor: Color.fromARGB(255, 229, 229, 203),
                          fixedSize: Size(250, 20)),
                      child: Text("Top Up Wallet"),
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
