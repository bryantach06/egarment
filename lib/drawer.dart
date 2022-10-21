import 'package:flutter/material.dart';
import 'package:garment_app/home_page.dart';
import 'package:get/get.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  Widget buildHeader(BuildContext) => Container(
        padding: const EdgeInsets.all(24),
      );
  Widget buildMenuItems(BuildContext) => Wrap(
        runSpacing: 10.0,
        children: [
          // UserAccountsDrawerHeader(
          //   decoration: BoxDecoration(
          //     color: Colors.green[900],
          //   ),
          //   accountName: null,
          //   accountEmail: null,
          // ),
          ListTile(
            leading: const Icon(
              Icons.home,
              color: Colors.green,
            ),
            title: const Text('Home'),
            onTap: () {
              Get.to(
                const HomePage(),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.menu_book,
              color: Colors.green,
            ),
            title: const Text('Master Menu'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.attach_money,
              color: Colors.green,
            ),
            title: const Text('Purchasing'),
            onTap: () {},
          ),
          const Divider(
            color: Colors.black54,
          ),
          ListTile(
            leading: const Icon(
              Icons.exit_to_app,
              color: Colors.green,
            ),
            title: const Text('Sign Out'),
            onTap: () {},
          ),
          // ListTile(
          //   leading: const Icon(
          //     Icons.help_outline,
          //     color: Colors.green,
          //   ),
          //   title: const Text('Help & Customer Service'),
          //   onTap: () {},
          // )
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildHeader(context),
            buildMenuItems(context),
          ],
        ),
      ),
    );
  }
}
