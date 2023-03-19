import 'package:flutter/material.dart';
import 'package:p2/paginas/groceries.dart';
import 'package:p2/paginas/plans.dart';
import 'package:p2/paginas/recipes.dart';

import 'package:p2/paginas/account.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectedIndex = 0;
  void _navigateBottonBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _paginas = [Recipes(), Plans(), Groceries(), Account()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _paginas[_selectedIndex]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add), onPressed: () {}, tooltip: 'Increment'),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottonBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.restaurant_menu), label: 'Recipes'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Plans'),
          BottomNavigationBarItem(icon: Icon(Icons.adjust), label: 'Groceries'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account')
        ],
      ),
    );
  }
}
