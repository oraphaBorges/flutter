import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.pink,
            ),
            child: ListTile(
              title: Center(
                child: ListTile(
                  title: Text(
                    "Fã #1",
                    style: TextStyle(color: Colors.white,fontSize: 22),
                  ),
                  subtitle: Text(
                    "Seja muito Bem-Viado!",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ),
          )
        ],
      ),
    );
  }
}