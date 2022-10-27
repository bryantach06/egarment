import 'package:flutter/material.dart';
import 'drawer.dart';
import 'master_page.dart';
import 'menu_button.dart';

class ProductionPage extends StatelessWidget {
  const ProductionPage({Key? key}) : super(key: key);

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

              //penerimaan CMT, pembayaran AP
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MenuButton(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      imageResource: 'assets/images/inventory_logo.jpg',
                      menuName: 'Penerimaan CMT',
                      pageDestination: const MasterPage(),
                    ),
                    MenuButton(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      imageResource: 'assets/images/postatus_logo.jpg',
                      menuName: 'Pembayaran AP',
                      pageDestination: const MasterPage(),
                    ),
                  ],
                ),
              ),

              //hasil cutting
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MenuButton(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      imageResource: 'assets/images/hutang_supplier_logo.jpg',
                      menuName: 'Hasil Cutting',
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
