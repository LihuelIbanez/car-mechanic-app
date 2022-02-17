import 'package:flutter/material.dart';

class Drawers extends StatelessWidget {
  const Drawers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          ListTile(
            leading: const Icon(Icons.ac_unit),
            focusColor: const Color.fromRGBO(219, 104, 63, 0.5),
            hoverColor: const Color.fromRGBO(132, 188, 174, 0.5),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            leading: const Icon(Icons.ac_unit),
            focusColor: const Color.fromRGBO(219, 104, 63, 0.5),
            hoverColor: const Color.fromRGBO(132, 188, 174, 0.5),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
        ],
      ),
    );
  }
}
