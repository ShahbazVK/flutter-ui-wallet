// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app/my_bars.dart';
import 'package:wallet_app/my_button.dart';
import 'package:wallet_app/my_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 204, 200, 200),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "My ",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Cards",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_circle,
                      size: 30,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 190,
                child: PageView(
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  children: [
                    MyCard(
                      balance: 478.25,
                      cardNumber: 98285927,
                      expiryMonth: 8,
                      expiryYear: 24,
                      color: Colors.deepPurple,
                    ),
                    MyCard(
                      balance: 382.25,
                      cardNumber: 83927482,
                      expiryMonth: 10,
                      expiryYear: 24,
                      color: Colors.green,
                    ),
                    MyCard(
                      balance: 8437.25,
                      cardNumber: 74827593,
                      expiryMonth: 12,
                      expiryYear: 24,
                      color: Colors.orange,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: ExpandingDotsEffect(),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyButton(
                        imagePath: "../images/share.png", imageText: "Send"),
                    MyButton(
                        imagePath: "../images/money.png", imageText: "Pay"),
                    MyButton(
                        imagePath: "../images/invoice.png", imageText: "Bills"),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    MyBars(
                        imagePath: "../images/chart.png",
                        imageText: "Statistics",
                        imageSubtitleText: "Payments and income"),
                    SizedBox(
                      height: 15,
                    ),
                    MyBars(
                        imagePath: "../images/transaction.png",
                        imageText: "Transactions",
                        imageSubtitleText: "Transactions history"),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.monetization_on),
        backgroundColor: Colors.pink,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
