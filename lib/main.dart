// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsi1/about.dart';
import 'package:responsi1/stokobat.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: Homepage(),
    debugShowCheckedModeBanner: false,
  ));
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(10.0),
          child: AppBar(
            backgroundColor: Colors.pink[200],
          ),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.amber),
              child: Row(
                children: [
                  SizedBox(
                    height: 50,
                    width: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        'Fatah Apotik',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        'A12.2020.06454',
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        'Menjual Berbagai Jenis Obat',
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 70,
                    height: 20,
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/logo.png',
                        width: 100,
                        height: 200,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Stokobat(),
                            ),
                          );
                        },
                        style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          padding: MaterialStatePropertyAll(
                            EdgeInsets.all(20),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/stokobat.png',
                              width: 100,
                              height: 100,
                            ), // Icon
                            Text('Stok Obat'), // Teks
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          padding: MaterialStatePropertyAll(
                            EdgeInsets.all(20),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/transaksi.png',
                              height: 100,
                              width: 100,
                            ),
                            Text('Transaksi'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Logika ketika tombol ditekan
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => About(),
                            ),
                          );
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                            ),
                          ),
                          padding: MaterialStatePropertyAll(
                            EdgeInsets.all(20),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/about.png',
                              height: 100,
                              width: 100,
                            ),
                            Text('Tentang'),
                          ],
                        ),
                      ),
                      SizedBox(width: 20), // Spasi antara dua set tombol
                      ElevatedButton(
                        onPressed: () {
                          // Logika ketika tombol ditekan
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          padding: MaterialStatePropertyAll(
                            EdgeInsets.all(20),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/exit.png',
                              height: 100,
                              width: 100,
                            ),
                            Text('Exit'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
