// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, must_be_immutable

import 'package:flutixapp/models/models.dart';
import 'package:flutixapp/ui/pages/home/success_checkout.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

class checkout extends StatelessWidget {
  checkout({Key? key, required this.selectedSeats, required this.movies});
  List<String> selectedSeats;
  Movie movies;

  String generateOrderId() {
    Random random = Random();
    List<int> orderIds = [];

    while (orderIds.length < 5) {
      int orderId = random.nextInt(1000);
      if (!orderIds.contains(orderId)) {
        orderIds.add(orderId);
      }
    }

    String orderIdString = orderIds.join('');
    return orderIdString;
  }

  @override
  Widget build(BuildContext context) {
    double rating = movies.rate / 2;
    int fullStars = rating.floor();
    bool hasHalfStar = (rating - fullStars) > 0;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 20),
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
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, bottom: 10.0, top: 10, right: 20),
                child: Text(
                  "Check Details Below Before Checkout",
                  style: GoogleFonts.raleway(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 90,
                    height: 110,
                    margin: EdgeInsets.only(left: 20.0, top: 10.0),
                    child: Image.network(
                      movies.poster,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          movies.judul,
                          style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, top: 10, bottom: 10),
                        child: Text(
                          movies.genre.join(", "),
                          style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 7.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: List.generate(
                                fullStars,
                                (starIndex) {
                                  return const Icon(
                                    Icons.star,
                                    color: Colors.black,
                                    size: 16,
                                  );
                                },
                              ),
                            ),
                            if (hasHalfStar)
                              const Icon(
                                Icons.star_half,
                                color: Colors.black,
                                size: 16,
                              ),
                            const SizedBox(width: 5),
                            Text(
                              "${movies.rate.toStringAsFixed(1)}/10",
                              style: GoogleFonts.openSans(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
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
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "ID Order",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(width: 135),
                        Text(
                          generateOrderId(),
                          textAlign: TextAlign.right,
                          style: GoogleFonts.openSans(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Cinema",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(width: 120),
                        Text(
                          "Paris Van Java Mall",
                          textAlign: TextAlign.right,
                          style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Date & Time",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(width: 130),
                        Text(
                          "Sat 21, 12:00",
                          textAlign: TextAlign.right,
                          style: GoogleFonts.openSans(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${selectedSeats.length} Tickets",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Flexible(
                          child: Text(
                            selectedSeats.join(
                                ", "), // Menampilkan kursi terpilih, dipisahkan dengan koma
                            textAlign: TextAlign.right,
                            style: GoogleFonts.raleway(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Seat",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(width: 180),
                        Text(
                          "Rp. 50.000 x ${selectedSeats.length}",
                          textAlign: TextAlign.right,
                          style: GoogleFonts.openSans(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Fees",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(width: 180),
                        Text(
                          "Rp. 20.000 x ${selectedSeats.length}",
                          textAlign: TextAlign.right,
                          style: GoogleFonts.openSans(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(width: 195),
                        Text(
                          "Rp. ${formatCurrency(calculateTotal(selectedSeats.length))}",
                          textAlign: TextAlign.right,
                          style: GoogleFonts.openSans(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Divider(
                color: Colors.black,
                thickness: 2,
                indent: 20.0,
                endIndent: 20.0,
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.only(right: 20.0, left: 20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Saldo Wallet",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(width: 135),
                        Text(
                          "Rp. 560.000",
                          textAlign: TextAlign.right,
                          style: GoogleFonts.openSans(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 50, left: 20, bottom: 40),
                    child: Text(
                      "Checkout Now",
                      style: GoogleFonts.raleway(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => success_checkout()));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                          right: 20, top: 50, bottom: 40, left: 105),
                      child: Icon(
                        Icons.arrow_circle_right,
                        color: Color(0xFFE1A20B),
                        size: 60,
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

// Fungsi untuk menghitung total berdasarkan jumlah kursi
int calculateTotal(int seatCount) {
  int ticketPrice = 50000;
  int feePrice = 20000;
  return (ticketPrice * seatCount) + (feePrice * seatCount);
}

// Fungsi untuk memformat mata uang
String formatCurrency(int amount) {
  final formatter = NumberFormat("#,###", "id_ID");
  return formatter.format(amount);
}
