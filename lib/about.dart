// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink[200],
          title: Text(
            'Tentang Kami',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 230,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.pink[400]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/udinus.png',
                        width: 150,
                        height: 150,
                      ),
                      Text(
                        'Fatah Apotik',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                border: Border.all(
                  color: Colors.pink,
                  width: 4,
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text('Fatahillah Abid'),
                  Text("A12.2020.06454"),
                  SizedBox(
                    height: 12,
                  ),
                  Text("tentang aplikasi :"),
                  Text(
                      'Aplikasi ini digunakan untuk menjual berbagai jenis obat dengan khasiat tinggi'),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              children: [
                Image.asset(
                  'assets/dokter.png',
                  height: 200,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
