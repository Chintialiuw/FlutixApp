import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HistoryTopUpList extends StatelessWidget {
  final String id;

  HistoryTopUpList({required this.id});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection('historyTopup')
          .where('idCust', isEqualTo: id)
          .snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: Container(
                child: CircularProgressIndicator(color: Color(0xFFE1A20B))),
          );
        }

        if (snapshot.data == null || snapshot.data!.docs.isEmpty) {
          return Text('No Top-Up History');
        }

        return Container(
          height: 300,
          child: ListView(
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              Map<String, dynamic> data =
                  document.data() as Map<String, dynamic>;
              String saldoTopUp = data['saldoTopUp'].toString();
              String waktu = data['waktu'].toString();

              return ListTile(
                leading: Container(
                    width: 20,
                    height: 20,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Icon(Icons.attach_money_rounded),
                    )),
                title: Text('IDR $saldoTopUp'),
                subtitle: Text('$waktu'),
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
