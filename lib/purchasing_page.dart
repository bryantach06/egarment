import 'package:flutter/material.dart';
import 'drawer.dart';
import 'master_page.dart';
import 'menu_button.dart';

class PurchasingPage extends StatelessWidget {
  const PurchasingPage({Key? key}) : super(key: key);

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
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: screenHeight * 0.03),
                  child: MenuButton(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    imageResource: 'assets/images/po_logo.jpg',
                    menuName: 'PO',
                    pageDestination: const MasterPage(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: screenHeight * 0.03),
                  child: MenuButton(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    imageResource: 'assets/images/po_logo.jpg',
                    menuName: 'PO CMT',
                    pageDestination: const MasterPage(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: const DrawerMenu(),
    );
  }
}
