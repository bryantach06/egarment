import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({
    Key? key,
    required this.imageResource,
    required this.screenHeight,
    required this.screenWidth, required this.menuName, required this.pageDestination,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;

  final String imageResource;
  final String menuName;

  final pageDestination;

  void getToPage(){
    Get.to(pageDestination);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: getToPage,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              imageResource,
              height: screenHeight * 0.15,
              width: screenWidth * 0.3,
            ),
          ),
        ),
        SizedBox(height: screenHeight * 0.0075,),
        Text(menuName),
      ],
    );
  }
}