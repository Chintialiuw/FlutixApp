import 'package:flutter/material.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(25),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("images/card/minji.jpg"),
                    ),
                    Text(
                      "Chintia Liu Wintin",
                      style: TextStyle(fontSize: 24),
                    ),
                    Text(
                      "chintialiuw@gmail.com",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 25),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.settings)),
                        TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                foregroundColor: Colors.black),
                            child: Text(
                              "Edit Profile",
                              style: TextStyle(fontSize: 16),
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.settings)),
                        TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                foregroundColor: Colors.black),
                            child: Text(
                              "My Wallet",
                              style: TextStyle(fontSize: 16),
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.settings)),
                        TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                foregroundColor: Colors.black),
                            child: Text(
                              "Change Language",
                              style: TextStyle(fontSize: 16),
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.settings)),
                        TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                foregroundColor: Colors.black),
                            child: Text(
                              "Help Center",
                              style: TextStyle(fontSize: 16),
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.settings)),
                        TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                foregroundColor: Colors.black),
                            child: Text(
                              "Rate Flutix App",
                              style: TextStyle(fontSize: 16),
                            )),
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
