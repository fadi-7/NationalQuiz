import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nationalquiz/core/enums/bottom_navigation.dart';
import 'package:nationalquiz/ui/shared/colors.dart';
import 'package:nationalquiz/ui/shared/utils.dart';

import '../../../../core/translation/app_translation.dart';

class BottomNavigationWidget extends StatefulWidget {
  final BottomNavigationEnum bottomNavigation;
  final Function(BottomNavigationEnum, int) onTap;
  BottomNavigationWidget(
      {Key? key, required this.bottomNavigation, required this.onTap})
      : super(key: key);

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Positioned.directional(
          bottom: screenWidth(20),
          end: screenWidth(20),
          start: screenWidth(20),
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth(80)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                navItem(
                    onTap: () {
                      widget.onTap(BottomNavigationEnum.NOTIFICATION, 0);
                    },
                    size: size,
                    imageName: 'products-svgrepo-com',
                    text: tr("Key_Menu"),
                    isSelected:
                        widget.bottomNavigation == BottomNavigationEnum.NOTIFICATION),
                navItem(
                    onTap: () {
                      widget.onTap(BottomNavigationEnum.HOME, 1);
                    },
                    size: size,
                    imageName: 'home-svgrepo-com',
                    text: tr('Key_Offers'),
                    isSelected:
                        widget.bottomNavigation == BottomNavigationEnum.HOME),
                navItem(
                    onTap: () {
                      widget.onTap(BottomNavigationEnum.IMPORTANT_QUESTION, 2);
                    },
                    size: size,
                    imageName: 'cart-svgrepo-com',
                    text: tr("Key_Profile"),
                    isSelected: widget.bottomNavigation ==
                        BottomNavigationEnum.IMPORTANT_QUESTION),
                          navItem(
                    onTap: () {
                      widget.onTap(BottomNavigationEnum.PROFILE, 3);
                    },
                    size: size,
                    imageName: 'cart-svgrepo-com',
                    text: tr("Key_Profile"),
                    isSelected: widget.bottomNavigation ==
                        BottomNavigationEnum.PROFILE),
            
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget navItem(
      {required Size size,
      required String imageName,
      required String text,
      required bool isSelected,
      required Function onTap}) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Column(
        children: [
          SvgPicture.asset(
            'images/$imageName.svg',
            width: screenWidth(15),
            color:
                isSelected ? AppColors.mainBlueColor : AppColors.mainBlackColor,
          ),
        ],
      ),
    );
  }
}

class BottomClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.lineTo(size.width * 0.3381500, 0);
    path0.quadraticBezierTo(size.width * 0.3731500, size.height * 0.0069000,
        size.width * 0.3757000, size.height * 0.1236000);
    path0.quadraticBezierTo(size.width * 0.4022000, size.height * 0.5633000,
        size.width * 0.5006000, size.height * 0.5896000);
    path0.quadraticBezierTo(size.width * 0.5955500, size.height * 0.5727000,
        size.width * 0.6200000, size.height * 0.1240000);
    path0.quadraticBezierTo(size.width * 0.6204500, size.height * -0.0157000,
        size.width * 0.6646000, 0);
    path0.lineTo(size.width, 0);
    path0.lineTo(size.width, size.height);
    path0.lineTo(0, size.height);
    path0.lineTo(0, 0);
    path0.lineTo(size.width * 0.6225000, size.height * 0.6100000);
    return path0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
