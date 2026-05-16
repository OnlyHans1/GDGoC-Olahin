import 'package:flutter/material.dart';
import 'package:olahin/shared/theme.dart';

class CustomBottomNavbar extends StatelessWidget {
  final int currentIndex;

  const CustomBottomNavbar({
    super.key,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: whiteColor,
      selectedItemColor: orangeColor,
      unselectedItemColor: grayColor,
      selectedLabelStyle:
          orangeTextStyle.copyWith(fontSize: 12, fontWeight: semiBold),
      unselectedLabelStyle:
          grayTextStyle.copyWith(fontSize: 12, fontWeight: medium),
      currentIndex: currentIndex,
      items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: 'Beranda',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.restaurant_outlined),
          activeIcon: Icon(Icons.restaurant),
          label: 'Resep',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.account_balance_wallet_outlined),
          activeIcon: Icon(Icons.account_balance_wallet),
          label: 'Budget',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.inventory_2_outlined),
          activeIcon: Icon(Icons.inventory_2),
          label: 'Bahan',
        ),
        BottomNavigationBarItem(
          icon: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            decoration: BoxDecoration(
              color: orangeColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              Icons.groups,
              color: orangeColor,
            ),
          ),
          label: 'Komunitas',
        ),
      ],
    );
  }
}
