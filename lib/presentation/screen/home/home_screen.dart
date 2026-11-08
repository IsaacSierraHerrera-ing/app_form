import 'package:flutter/material.dart';
import 'package:app_form/config/menu/menu_items.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('App Navigation')),
      body: ListView.builder(
        itemCount: appMenuItems.length,
        itemBuilder: (context, index) {
          final menuItem = appMenuItems[index];

          return _CustomListType(menuItems: menuItem);
        },
      ),
    );
  }
}

class _CustomListType extends StatelessWidget {
  final MenuItems menuItems;
  const _CustomListType({required this.menuItems});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
      leading: Icon(menuItems.icon, color: colors.primary),
      trailing: Icon(Icons.arrow_forward_ios_outlined),
      title: Text(menuItems.title),
      subtitle: Text(menuItems.subtittle),
      onTap: () {
        context.push(menuItems.link);
      },
    );
  }
}
