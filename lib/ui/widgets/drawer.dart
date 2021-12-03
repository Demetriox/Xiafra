import 'package:carrers/secure_storage/session.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const SizedBox(
            height: 35,
          ),
          ListTile(
            title: const Text('Salir'),
            onTap: () {
              Session().delete('user');
              Navigator.of(context).pushNamed('/');
            },
          ),
        ],
      ),
    );
  }
}
