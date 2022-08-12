import 'dart:ffi';

import 'package:booking_movie/Cinema/home_cine_page.dart';
import 'package:booking_movie/Dashboard/Pages/account.dart';
import 'package:booking_movie/Dashboard/Pages/cinema.dart';
import 'package:booking_movie/Dashboard/Pages/movies.dart';
import 'package:flutter/material.dart';

import '../../Dashboard/Pages/setting.dart';

class NavigationDrawer extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 20);

  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const name = 'Liy';
    const urlImag =
        'https://www.pngall.com/wp-content/uploads/5/Cute-Anime-Girl-PNG-Photo.png';
    return Drawer(
      child: Material(
        color: Color.fromARGB(255, 169, 37, 27),
        child: ListView(
          padding: padding,
          children: <Widget>[
            buildHeader(
              urlImag: urlImag,
              name: name,
              onClicked: () => selectedItem(context, 1),
            ),
            Divider(
              color: Colors.white54,
            ),
            const SizedBox(
              height: 28,
            ),
            const SizedBox(height: 48),
            buildMenuItem(
              text: 'Home Page',
              icon: Icons.home,
              onClicked: () => selectedItem(context, 0),
            ),
            buildMenuItem(
              text: 'Account',
              icon: Icons.people,
              onClicked: () => selectedItem(context, 1),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Movie',
              icon: Icons.movie_creation,
              onClicked: () => selectedItem(context, 2),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Cinema',
              icon: Icons.theaters,
              onClicked: () => selectedItem(context, 3),
            ),
            const SizedBox(
              height: 28,
            ),
            Divider(
              color: Colors.white54,
            ),
            const SizedBox(
              height: 28,
            ),
            buildMenuItem(
              text: 'Setting',
              icon: Icons.settings,
              onClicked: () => selectedItem(context, 4),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(
        text,
        style: TextStyle(color: color),
      ),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const HomeCinePage(),
        ));
        break;

      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const Account(),
        ));
        break;

      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const Movies(),
        ));
        break;

      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const Cinema(),
        ));
        break;

      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const Setting(),
        ));
        break;
    }
  }

  Widget buildHeader({
    required String urlImag,
    required String name,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(const EdgeInsets.symmetric(vertical: 40)),
          child: Row(children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(urlImag),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              padding: padding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                ],
              ),
            )
          ]),
        ),
      );
}
