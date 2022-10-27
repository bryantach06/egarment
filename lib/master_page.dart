import 'package:flutter/material.dart';
import 'drawer.dart';
import 'menu_button.dart';

class MasterPage extends StatelessWidget {
  const MasterPage({Key? key}) : super(key: key);

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

              //bahan, supplier
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MenuButton(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      imageResource: 'assets/images/bahan_logo.jpg',
                      menuName: 'Bahan',
                      pageDestination: const MasterPage(),
                    ),
                    MenuButton(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      imageResource: 'assets/images/supplier_logo.jpg',
                      menuName: 'Supplier',
                      pageDestination: const MasterPage(),
                    ),
                  ],
                ),
              ),

              //cmt, pola
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MenuButton(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      imageResource: 'assets/images/cmt_logo.png',
                      menuName: 'CMT',
                      pageDestination: const MasterPage(),
                    ),
                    MenuButton(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      imageResource: 'assets/images/production_logo.jpg',
                      menuName: 'Pola',
                      pageDestination: const MasterPage(),
                    ),
                  ],
                ),
              ),

              //outlet, produk
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MenuButton(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      imageResource: 'assets/images/outlet_logo.jpg',
                      menuName: 'Outlet',
                      pageDestination: const MasterPage(),
                    ),
                    MenuButton(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      imageResource: 'assets/images/produk_logo.jpg',
                      menuName: 'Produk',
                      pageDestination: const MasterPage(),
                    ),
                  ],
                ),
              ),

              //jenis material, warna
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MenuButton(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      imageResource: 'assets/images/jenismaterial_logo.jpg',
                      menuName: 'Jenis Material',
                      pageDestination: const MasterPage(),
                    ),
                    MenuButton(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      imageResource: 'assets/images/warna_logo.jpg',
                      menuName: 'Warna',
                      pageDestination: const MasterPage(),
                    ),
                  ],
                ),
              ),

              //input jadi, input by qr code
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MenuButton(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      imageResource: 'assets/images/qrcode_logo.jpg',
                      menuName: 'Input Jadi',
                      pageDestination: const MasterPage(),
                    ),
                    MenuButton(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      imageResource: 'assets/images/qrcode_logo.png',
                      menuName: 'Input by QR',
                      pageDestination: const MasterPage(),
                    ),
                  ],
                ),
              ),

              //accessories, tools & equipment
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MenuButton(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      imageResource: 'assets/images/qrcode_logo.jpg',
                      menuName: 'Accessories',
                      pageDestination: const MasterPage(),
                    ),
                    MenuButton(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      imageResource: 'assets/images/qrcode_logo.jpg',
                      menuName: 'Tools & Equipment',
                      pageDestination: const MasterPage(),
                    ),
                  ],
                ),
              ),

              //adjustments, stok opname
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MenuButton(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      imageResource: 'assets/images/qrcode_logo.jpg',
                      menuName: 'Adjustment',
                      pageDestination: const MasterPage(),
                    ),
                    MenuButton(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      imageResource: 'assets/images/qrcode_logo.jpg',
                      menuName: 'Stock Opname',
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
