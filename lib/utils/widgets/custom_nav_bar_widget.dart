import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

// Defina seus itens de navegação aqui
List<PersistentBottomNavBarItem> navBarItems = [
  PersistentBottomNavBarItem(
    icon: Icons.library_books,
    title: 'Biblioteca',
    activeColorPrimary: Colors.blue,
    inactiveColorPrimary: Colors.grey,
  ),
  PersistentBottomNavBarItem(
    icon: const Icon(Icons.explore),
    title: 'Descoberta',
    activeColorPrimary: Colors.blue,
    inactiveColorPrimary: Colors.grey,
  ),
  PersistentBottomNavBarItem(
    icon: const Icon(Icons.create),
    title: 'Escritura',
    activeColorPrimary: Colors.blue,
    inactiveColorPrimary: Colors.grey,
  ),
  PersistentBottomNavBarItem(
    icon: const Icon(Icons.notifications),
    title: 'Notificações',
    activeColorPrimary: Colors.blue,
    inactiveColorPrimary: Colors.grey,
  ),
];


class CustomNavBarWidget extends StatelessWidget {
  final int selectedIndex;
  final List<PersistentBottomNavBarItem> items;
  final ValueChanged<int> onItemSelected;

  CustomNavBarWidget({
    required this.selectedIndex,
    required this.items,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SizedBox(
        height: kBottomNavigationBarHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: items.map((item) {
            int index = items.indexOf(item);
            return GestureDetector(
              onTap: () => onItemSelected(index),
              child: Container(
                width: 60.0, // Ajuste conforme necessário
                height: kBottomNavigationBarHeight,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: selectedIndex == index ? Colors.blue : Colors.transparent,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Icon(
                  item.icon as IconData?,
                  color: selectedIndex == index ? Colors.white : Colors.grey,
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
