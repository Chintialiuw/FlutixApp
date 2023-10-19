import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: 360,
                height: 850,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(color: Color(0xFFFBFAF9)),
                child: Stack(
                  children: [
                    const Positioned(
                      left: 93,
                      top: 48,
                      child: SizedBox(
                        width: 122,
                        height: 36,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: SizedBox(
                                width: 122,
                                height: 20,
                                child: Text(
                                  'Chintia Liu Wintin',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w700,
                                    height: 0.11,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 16,
                              child: SizedBox(
                                width: 94,
                                height: 20,
                                child: Text(
                                  'IDR 500.000',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.w600,
                                    height: 0.15,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 42,
                      top: 103,
                      child: SizedBox(
                        width: 196,
                        height: 25,
                        child: Text(
                          'Now Playing',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w400,
                            height: 0.09,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: -102,
                      top: 134,
                      child: SizedBox(
                        width: 155,
                        height: 105,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 155,
                                height: 105,
                                decoration: ShapeDecoration(
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        "https://via.placeholder.com/155x105"),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(2)),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 155,
                                height: 105,
                                decoration: ShapeDecoration(
                                  color: Colors.black
                                      .withOpacity(0.4000000059604645),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(2)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 71,
                      top: 134,
                      child: SizedBox(
                        width: 155,
                        height: 105,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 155,
                                height: 105,
                                decoration: ShapeDecoration(
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        "https://via.placeholder.com/155x105"),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(2)),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 155,
                                height: 105,
                                decoration: ShapeDecoration(
                                  color: Colors.black
                                      .withOpacity(0.4000000059604645),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(2)),
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 7,
                              top: 70,
                              child: SizedBox(
                                width: 89,
                                height: 32,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: SizedBox(
                                        width: 64,
                                        height: 18,
                                        child: Text(
                                          'Avengers',
                                          style: TextStyle(
                                            color: Color(0xFFF4EDE6),
                                            fontSize: 14,
                                            fontFamily: 'Raleway',
                                            fontWeight: FontWeight.w700,
                                            height: 0.11,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 65,
                                      top: 14,
                                      child: SizedBox(
                                        width: 24,
                                        height: 18,
                                        child: Text(
                                          '7/10',
                                          style: TextStyle(
                                            color: Color(0xFFF4EDE6),
                                            fontSize: 10,
                                            fontFamily: 'Open Sans',
                                            fontWeight: FontWeight.w600,
                                            height: 0.22,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 19,
                                      child: SizedBox(
                                        width: 58,
                                        height: 9,
                                        // child: Stack(children: [
                                        // ,
                                        // ]),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 244,
                      top: 134,
                      child: SizedBox(
                        width: 155,
                        height: 105,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 155,
                                height: 105,
                                decoration: ShapeDecoration(
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        "https://via.placeholder.com/155x105"),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(2)),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 155,
                                height: 105,
                                decoration: ShapeDecoration(
                                  color: Colors.black
                                      .withOpacity(0.4000000059604645),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(2)),
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 7,
                              top: 70,
                              child: SizedBox(
                                width: 109,
                                height: 32,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: SizedBox(
                                        width: 109,
                                        height: 18,
                                        child: Text(
                                          'Despicable Me',
                                          style: TextStyle(
                                            color: Color(0xFFF4EDE6),
                                            fontSize: 14,
                                            fontFamily: 'Raleway',
                                            fontWeight: FontWeight.w700,
                                            height: 0.11,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 65,
                                      top: 14,
                                      child: SizedBox(
                                        width: 31,
                                        height: 18,
                                        child: Text(
                                          '8.5/10',
                                          style: TextStyle(
                                            color: Color(0xFFF4EDE6),
                                            fontSize: 10,
                                            fontFamily: 'Open Sans',
                                            fontWeight: FontWeight.w600,
                                            height: 0.22,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 19,
                                      child: SizedBox(
                                        width: 58,
                                        height: 9,
                                        // child: Stack(children: [
                                        // ,
                                        // ]),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 42,
                      top: 252,
                      child: SizedBox(
                        width: 276,
                        height: 114,
                        child: Stack(
                          children: [
                            const Positioned(
                              left: 0,
                              top: 0,
                              child: SizedBox(
                                width: 196,
                                height: 25,
                                child: Text(
                                  'Movie Category',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w400,
                                    height: 0.09,
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 2,
                              top: 89,
                              child: SizedBox(
                                width: 48,
                                height: 25,
                                child: Text(
                                  'Action',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w400,
                                    height: 0.09,
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 77,
                              top: 89,
                              child: SizedBox(
                                width: 48,
                                height: 25,
                                child: Text(
                                  'Battle',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w400,
                                    height: 0.09,
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 151,
                              top: 89,
                              child: SizedBox(
                                width: 48,
                                height: 25,
                                child: Text(
                                  'Sci-fi',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w400,
                                    height: 0.09,
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 226,
                              top: 89,
                              child: SizedBox(
                                width: 48,
                                height: 25,
                                child: Text(
                                  'Kids',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w400,
                                    height: 0.09,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 31,
                              child: Container(
                                width: 52,
                                height: 52,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFEAE9E7),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(2)),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 75,
                              top: 31,
                              child: Container(
                                width: 52,
                                height: 52,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFEAE9E7),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(2)),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 149,
                              top: 31,
                              child: Container(
                                width: 52,
                                height: 52,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFEAE9E7),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(2)),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 224,
                              top: 31,
                              child: Container(
                                width: 52,
                                height: 52,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFEAE9E7),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(2)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 42,
                      top: 379,
                      child: SizedBox(
                        width: 196,
                        height: 25,
                        child: Text(
                          'Coming Soon',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w400,
                            height: 0.09,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: -19,
                      top: 410,
                      child: SizedBox(
                        width: 397,
                        height: 178,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: SizedBox(
                                width: 121,
                                height: 178,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 121,
                                        height: 178,
                                        decoration: ShapeDecoration(
                                          image: const DecorationImage(
                                            image: NetworkImage(
                                                "https://via.placeholder.com/121x178"),
                                            fit: BoxFit.fill,
                                          ),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(2)),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 121,
                                        height: 178,
                                        decoration: ShapeDecoration(
                                          color: Colors.black
                                              .withOpacity(0.20000000298023224),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(2)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 139,
                              top: 0,
                              child: SizedBox(
                                width: 120,
                                height: 178,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 120,
                                        height: 178,
                                        decoration: ShapeDecoration(
                                          image: const DecorationImage(
                                            image: NetworkImage(
                                                "https://via.placeholder.com/120x178"),
                                            fit: BoxFit.fill,
                                          ),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(2)),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 120,
                                        height: 178,
                                        decoration: ShapeDecoration(
                                          color: Colors.black
                                              .withOpacity(0.20000000298023224),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(2)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 277,
                              top: 0,
                              child: SizedBox(
                                width: 120,
                                height: 178,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 120,
                                        height: 178,
                                        decoration: ShapeDecoration(
                                          image: const DecorationImage(
                                            image: NetworkImage(
                                                "https://via.placeholder.com/120x178"),
                                            fit: BoxFit.fill,
                                          ),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(2)),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 120,
                                        height: 178,
                                        decoration: ShapeDecoration(
                                          color: Colors.black
                                              .withOpacity(0.20000000298023224),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(2)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 42,
                      top: 618,
                      child: Container(
                        width: 276,
                        height: 98,
                        decoration: ShapeDecoration(
                          image: const DecorationImage(
                            image: NetworkImage(
                                "https://via.placeholder.com/276x98"),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2)),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 42,
                      top: 618,
                      child: Container(
                        width: 276,
                        height: 98,
                        decoration: ShapeDecoration(
                          color: Colors.black.withOpacity(0.6000000238418579),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2)),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 49,
                      top: 680,
                      child: SizedBox(
                        width: 109,
                        height: 18,
                        child: Text(
                          'Holiday Promo',
                          style: TextStyle(
                            color: Color(0xFFF4EDE6),
                            fontSize: 14,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                            height: 0.11,
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 49,
                      top: 698,
                      child: SizedBox(
                        width: 71,
                        height: 11,
                        child: Text(
                          'Min. Four User',
                          style: TextStyle(
                            color: Color(0xFFF4EDE6),
                            fontSize: 10,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                            height: 0.22,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 746,
                      child: Container(
                        width: 360,
                        height: 104,
                        decoration:
                            const BoxDecoration(color: Color(0xFFEAE9E7)),
                      ),
                    ),
                    const Positioned(
                      left: 42,
                      top: 770,
                      child: SizedBox(
                        width: 54,
                        height: 55,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: SizedBox(
                                width: 54,
                                height: 41.71,
                                // child: Stack(children: [
                                // ,
                                // ]),
                              ),
                            ),
                            Positioned(
                              left: 7,
                              top: 42,
                              child: SizedBox(
                                width: 40,
                                height: 13,
                                child: Text(
                                  'Movies',
                                  style: TextStyle(
                                    color: Color(0xFFE1A20B),
                                    fontSize: 12,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w500,
                                    height: 0.15,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 278,
                      top: 771,
                      child: SizedBox(
                        height: 54,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 2,
                              top: 41,
                              child: SizedBox(
                                width: 36,
                                height: 13,
                                child: Text(
                                  'Profile',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w500,
                                    height: 0.15,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 162,
                      top: 771,
                      child: SizedBox(
                        height: 54,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 5,
                              top: 41,
                              child: SizedBox(
                                width: 41,
                                height: 13,
                                child: Text(
                                  'Tickets',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w500,
                                    height: 0.15,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 38,
                      top: 44,
                      child: Container(
                        width: 48,
                        height: 48,
                        decoration: const ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://via.placeholder.com/48x48"),
                            fit: BoxFit.fill,
                          ),
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: SizedBox(
                        width: 360,
                        height: 21,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Opacity(
                                opacity: 0.30,
                                child: Container(
                                  width: 360,
                                  height: 21,
                                  decoration: const BoxDecoration(
                                      color: Color(0x66EAE9E7)),
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 304,
                              top: 6,
                              child: SizedBox(
                                width: 31,
                                height: 10,
                                child: Text(
                                  '10.45',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    height: 0.15,
                                  ),
                                ),
                              ),
                            ),
                          ],
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
