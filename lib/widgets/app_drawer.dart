import 'package:afoola/screens/hibbo_screen.dart';
import 'package:afoola/screens/uffata_screen.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: const Text('Hello Friend!'),
            automaticallyImplyLeading: false,
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.payment),
            title: const Text('Hibboo'),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(HibboScreen.routName);
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.accessibility_sharp),
            title: const Text('Uffata'),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(UffataScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
