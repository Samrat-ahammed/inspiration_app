// ignore_for_file: prefer_const_constructors

import 'dart:ffi';

import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(
        home: HomePage(),
      ),
    );

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 219, 219, 219),
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          brightness: Brightness.light,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black87,
            ),
          )),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(30))),
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Find Your',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black87,
                        letterSpacing: 1.2),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Inspiration',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromARGB(255, 215, 215, 215)),
                    padding: const EdgeInsets.all(5),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search),
                          hintText: "Search you're locking for",
                          hintStyle:
                              TextStyle(color: Colors.black87, fontSize: 15)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Promo Tody',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 230,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        promoCard(
                            'assets/ann_integra-AlXrWDVlwdA-unsplash.jpg'),
                        promoCard(
                            'assets/ann_integra-lUJZTE5SagI-unsplash.jpg'),
                        promoCard(
                            'assets/tonya-wright-2WnmZjqXI2o-unsplash.jpg'),
                        promoCard(
                            'assets/vladislav-kim-2-BBSae3njg-unsplash.jpg'),
                        promoCard(
                            'assets/vladislav-kim-92efHX0FDS8-unsplash.jpg'),
                        promoCard(
                            'assets/karolina-bobek-pYOLKX58rVc-unsplash.jpg'),
                        promoCard('assets/zahra-abam-o-LB7paSf10-unsplash.jpg'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.orangeAccent,
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/vladislav-kim-2-BBSae3njg-unsplash.jpg'),
                          fit: BoxFit.cover),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          stops: const [0.3, 0.9],
                          colors: [
                            Colors.black.withOpacity(.8),
                            Colors.black.withOpacity(.1),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget promoCard(image) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.orangeAccent,
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              stops: [0.2, 0.9],
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
