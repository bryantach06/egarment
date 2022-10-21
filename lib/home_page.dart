import 'package:flutter/material.dart';
import 'package:garment_app/master_page.dart';
import 'package:garment_app/purchasing_page.dart';
import 'drawer.dart';
import 'menu_button.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('E-Garment'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: screenHeight * 0.03,),
              Padding(
                padding: EdgeInsets.symmetric(vertical: screenHeight * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MenuButton(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      imageResource: 'assets/images/master_logo.jpg',
                      menuName: 'Master',
                      pageDestination: const MasterPage(),
                    ),
                    MenuButton(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      imageResource: 'assets/images/cart_logo.jpg',
                      menuName: 'Purchasing',
                      pageDestination: const PurchasingPage(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: screenHeight * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MenuButton(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      imageResource: 'assets/images/inventory_logo.jpg',
                      menuName: 'Inventory',
                      pageDestination: const MasterPage(),
                    ),
                    MenuButton(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      imageResource: 'assets/images/production_logo.jpg',
                      menuName: 'Production',
                      pageDestination: const MasterPage(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: screenHeight * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MenuButton(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      imageResource: 'assets/images/finance_logo.jpg',
                      menuName: 'Finance',
                      pageDestination: const MasterPage(),
                    ),
                    MenuButton(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      imageResource: 'assets/images/report_logo.jpg',
                      menuName: 'Report',
                      pageDestination: const MasterPage(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: const DrawerMenu(),
    );
  }
}
