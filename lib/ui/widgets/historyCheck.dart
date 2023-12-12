import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

String id = FirebaseAuth.instance.currentUser!.uid;

Widget buildHistoryList(bool isDescending) {
  return FutureBuilder<QuerySnapshot>(
    
    future: FirebaseFirestore.instance
        .collection('historyCheck')
        .where('idCust', isEqualTo: id)
        //.where('idCust', isEqualTo: id)
        //.orderBy('orderID', descending: isDescending)
        .orderBy('dateTime', descending: isDescending)
        .get(),
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
        return ListView.builder(
          itemCount: snapshot.data!.docs.length,
          itemBuilder: (context, index) {
            var ticketData = snapshot.data!.docs[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: ListTile(
                leading: Container(
                  width: 100,
                  height: 100,
                  child: Image.network(
                    ticketData['moviePoster'],
                    fit: BoxFit.fill,
                  ),
                ),
                title: Text(ticketData['movieTitle']),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(ticketData['dateTime']),
                    Text(ticketData['cinema']),
                  ],
                ),
              ),
            );
          },
        );
      }
    },
  );
}
