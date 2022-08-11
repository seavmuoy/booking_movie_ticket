import 'dart:ffi';

import 'package:booking_movie/Cinema/home_cine_page.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 20);

  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final name = 'Liy';
    final email = 'Chan';
    final urlImag =
        'https://static.wixstatic.com/media/dc4461_a4dffda130894178b0fa42d4367d2ced~mv2.png/v1/fill/w_135,h_89,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/image_2022-06-16_09-58-43-removebg-preview_edited.png';
    return Drawer(
      child: Material(
        color: Color.fromARGB(255, 243, 29, 14),
        child: ListView(
          padding: padding,
          children: <Widget>[
            buildHeader(
              urlImag: urlImag,
              name: name,
              email: email,
              onClicked: () {},
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
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Cinema',
              icon: Icons.theaters,
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
        break;

      case 2:
        break;

      case 3:
        break;
    }
  }

  Widget buildHeader({
    required String urlImag,
    required String name,
    required String email,
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
                  Text(
                    email,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      );
}
