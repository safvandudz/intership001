import 'package:flutter/material.dart';
import 'package:intership01/screens/home/homeController.dart';
import '../../../router/approutes.dart';
import '../../../widget/buttn.dart';

class ListWidget extends StatelessWidget {
  final HomeController controller;

  const ListWidget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final navItem = controller.navItems[index];
        final isSelected = controller.selectedIndex == index;
        return Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: GestureDetector(
            onTap: () {
              controller.setSelectedIndex(index);
              router.push(navItem.route);
            },
            child: Buttn(color: isSelected ? Colors.white : Colors.transparent,
              child: Text(
                navItem.name,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              h: '20',
            ),
          ),
        );
      },
      separatorBuilder: (context, index) => SizedBox(height: 8),
      itemCount: controller.navItems.length,
    );
  }
}
