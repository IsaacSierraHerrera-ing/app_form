import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subtittle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title,
    required this.subtittle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItems>[
  MenuItems(
    title: 'Botones',
    subtittle: 'Varios botones en flutter',
    link: '/buttons',
    icon: Icons.smart_button_rounded,
  ),
  MenuItems(
    title: 'Tarjetas',
    subtittle: 'Varias Tarjetas en flutter',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItems(
    title: 'Acerca de',
    subtittle: 'Información personal',
    link: '/about',
    icon: Icons.person,
  ),
  MenuItems(
    title: 'Login',
    subtittle: 'Formulario de acceso',
    link: '/login',
    icon: Icons.login,
  ),
];
