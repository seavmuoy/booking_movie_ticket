import 'package:flutter/material.dart';

import '../Widgets/Widgets.dart';

class Cinema extends StatelessWidget {
  const Cinema({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff21242C),
      appBar: AppBar(
          backgroundColor: const Color(0xff323A82),
          elevation: 0.3,
          centerTitle: true,
          title: const TextFrave(
              text: 'Cinemas',
              color: Color.fromARGB(255, 139, 154, 186),
              fontWeight: FontWeight.w500,
              fontSize: 21)),
    );
  }
}
