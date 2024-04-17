// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsi1/detail.dart';

class Stokobat extends StatelessWidget {
  const Stokobat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink[200],
          title: Text(
            'Stok Obat',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              child: Container(
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey,
                ),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 50,
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.pink[400]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Pinisilin',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 150,
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Detailobat(),
                                    ),
                                  );
                                },
                                icon: Icon(Icons.more_vert),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 50,
                          width: 20,
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'assets/stetoskop.png',
                              width: 100,
                              height: 200,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Harga : 54000',
                              textAlign: TextAlign.start,
                            ),
                            Text(
                              'Jumlah : 50 Tablet',
                              textAlign: TextAlign.start,
                            ),
                            Text(
                              'Exp : ',
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(' Tambah\nStok Obat'), // Teks
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {},
                child: Column(
                  children: [
                    Text('TAMBAH DATA OBAT'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
