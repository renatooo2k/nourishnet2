import 'package:flutter/material.dart';
import '../theme/theme.dart';

typedef BottomNavTap = void Function(int index);

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final BottomNavTap? onTap;
  final String? username;

  const BottomNavBar({
    Key? key,
    this.currentIndex = 0,
    this.onTap,
    this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      selectedItemColor: kOrange,
      unselectedItemColor: kBlack,
      onTap: (index) {
        // se o caller passou um onTap, respeita ele (útil para testes)
        if (onTap != null) {
          onTap!(index);
          return;
        }
        // comportamento padrão: navegar entre rotas nomeadas
        if (index == 0) {
          Navigator.pushReplacementNamed(context, '/home', arguments: username);
        } else if (index == 1) {
          Navigator.pushReplacementNamed(context, '/addDonation', arguments: username);
        } else if (index == 2) {
          Navigator.pushReplacementNamed(context, '/profile', arguments: username);
        }
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ''),
      ],
    );
  }
}
