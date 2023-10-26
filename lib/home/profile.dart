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
