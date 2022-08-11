import 'package:flutter/material.dart';
import 'package:booking_movie/Dashboard/Widgets/Widgets.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Widgets/BottomNavigatorBarCustom.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
            children: [
              const SizedBox(height: 20),
              Center(
                  child: Container(
                padding: const EdgeInsets.all(15.0),
                height: 130,
                width: 130,
                decoration: BoxDecoration(
                    color: const Color(0xff3F8CFF).withOpacity(0.2),
                    shape: BoxShape.circle),
                child: Container(
                  padding: const EdgeInsets.all(7.0),
                  height: 100,
                  width: 100,
                  child: Image.asset('Assets/logo.png', height: 50),
                ),
              )),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  TextFrave(
                      text: 'Frave Developer',
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                  SizedBox(width: 5),
                  Icon(Icons.verified, color: Color(0xff3F8CFF))
                ],
              ),
              const SizedBox(height: 30),
              const TextFrave(
                  text: 'Account Settings', fontSize: 18, color: Colors.grey),
              const SizedBox(height: 20),
              _ItemProfile(
                text: 'Dark Mode',
                iconLeft: Icons.nightlight_round,
                iconRight: Icons.radio_button_off_rounded,
                onPressed: () {},
              ),
              _ItemProfile(
                text: 'GitHub',
                iconLeft: Icons.code,
                iconRight: Icons.open_in_new_rounded,
                onPressed: () async {
                  // ignore: deprecated_member_use
                  var url = await canLaunch('https://github.com/Frave07');
                  if (url) {
                    // ignore: deprecated_member_use
                    await launch('https://github.com/Frave07');
                  }
                },
              ),
              _ItemProfile(
                text: 'Youtube',
                iconLeft: Icons.movie_creation_outlined,
                iconRight: Icons.open_in_new_rounded,
                onPressed: () async {
                  // ignore: deprecated_member_use
                  var url = await canLaunch('https://cutt.ly/pckBg9D');
                  if (url) {
                    // ignore: deprecated_member_use
                    await launch('https://cutt.ly/pckBg9D');
                  }
                },
              ),
            ],
          ),
          Positioned(
            bottom: 10,
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              child: const BottomNavigatorCustom(index: 2),
            ),
          )
        ],
      ),
    );
  }
}

class _ItemProfile extends StatelessWidget {
  final String text;
  final IconData iconLeft;
  final IconData iconRight;
  final Function onPressed;

  const _ItemProfile(
      {Key? key,
      required this.text,
      required this.iconLeft,
      required this.iconRight,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10.0),
      elevation: 0,
      color: const Color(0xffF5F5F5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: InkWell(
        onTap: () => onPressed(),
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          height: 50,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(iconLeft),
                  const SizedBox(width: 15.0),
                  TextFrave(text: text, fontSize: 16),
                ],
              ),
              Icon(iconRight, color: Colors.grey)
            ],
          ),
        ),
      ),
    );
  }
}
