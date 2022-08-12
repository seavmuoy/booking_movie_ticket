import 'package:flutter/material.dart';

import '../Widgets/Widgets.dart';

class Movies extends StatelessWidget {
  const Movies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name = "movie";
    return Scaffold(
      backgroundColor: const Color(0xff21242C),
      appBar: AppBar(
          backgroundColor: const Color(0xff323A82),
          elevation: 0.3,
          centerTitle: true,
          title: const TextFrave(
              text: 'Movies',
              color: Color.fromARGB(255, 139, 154, 186),
              fontWeight: FontWeight.w500,
              fontSize: 21)),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Discover",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Column(
                  children: [
                    for (int i = 1; i < 10; i++)
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: [
                              ClipRRect(
                                child: Image.asset(
                                  "lib/assets/movie/movie4.jpg",
                                  height: 110,
                                  width: 80,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios_sharp,
                                color: Colors.white,
                                size: 25,
                              )
                            ],
                          ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
