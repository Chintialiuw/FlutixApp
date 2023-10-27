import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class checkout extends StatefulWidget {
  const checkout({super.key});

  @override
  State<checkout> createState() => _checkoutState();
}

class _checkoutState extends State<checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              CupertinoIcons.back,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
                child: Text(
                  "Check Details Below Before Checkout",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.normal),
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 90,
                    height: 110,
                    color: Colors.grey,
                    margin: EdgeInsets.only(left: 20.0, top: 10.0),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Monster Inc",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Adventure - Indonesia",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 7.0),
                        child: Row(
                          children: [
                            for (int i = 0; i < 4; i++)
                              Icon(
                                Icons.star_rounded,
                                color: Colors.black,
                                size: 16,
                              ),
                            Icon(
                              Icons.star_half_rounded,
                              color: Colors.black,
                              size: 16,
                            ),
                            Text(
                              "  8 / 10",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10.0),

              Divider(
                color: Colors.black,
                thickness: 2,
                indent: 20.0,
                endIndent: 20.0,
              ),
            ],
          )
        ],
      ),
    );
  }
}
