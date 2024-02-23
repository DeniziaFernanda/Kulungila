import 'package:flutter/material.dart';
import 'package:kulungila/utils/widgets/custom_nav_bar_widget.dart';

class Biblioteca extends StatefulWidget {
  const Biblioteca({Key? key}) : super(key: key);
  @override
  State<Biblioteca> createState() => _BibliotecaState();
}

class _BibliotecaState extends State<Biblioteca> {
  int _selectedIndex = 0;

  void _onItemSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Implemente a lógica para navegar para a tela correspondente ao índice selecionado
    switch (index) {
      case 0:
        // Navegar para a tela Biblioteca
        break;
      case 1:
        // Navegar para a tela Descoberta
        break;
      case 2:
        // Navegar para a tela Escritura
        break;
      case 3:
        // Navegar para a tela Notificações
        break;
      default:
        // Navegar para a tela Biblioteca como padrão
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(),
       bottomNavigationBar: CustomNavBarWidget(
        selectedIndex: _selectedIndex,
        items: navBarItems,
        onItemSelected: _onItemSelected,
      ),
    ));
  }
}