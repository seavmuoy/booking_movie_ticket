import 'package:flutter/material.dart';
import 'package:booking_movie/Dashboard/Widgets/Widgets.dart';
import 'package:booking_movie/Dashboard/Widgets/BottomNavigatorBarCustom.dart';
import 'package:booking_movie/Dashboard/Models/ProjectModel.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.3,
          centerTitle: true,
          title: const TextFrave(
              text: 'FRAVED PROJECTS',
              color: Color(0xff002C8B),
              fontWeight: FontWeight.w500,
              fontSize: 21)),
      body: Stack(
        children: [
          ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: ProjectModel.listProjects.length,
              itemBuilder: (context, i) =>
                  _ProjectCard(projectModel: ProjectModel.listProjects[i])),
          Positioned(
            bottom: 10,
            child: Container(
                alignment: Alignment.center,
                width: size.width,
                child: const BottomNavigatorCustom(index: 0)),
          )
        ],
      ),
    );
  }
}

class _ProjectCard extends StatelessWidget {
  final ProjectModel projectModel;

  const _ProjectCard({required this.projectModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, projectModel.route),
        child: Container(
          padding: const EdgeInsets.all(10.0),
          height: 60,
          decoration: BoxDecoration(
            color: projectModel.color,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(projectModel.pathImage,
                    fit: BoxFit.cover, height: 40, width: 40),
              ),
              const SizedBox(width: 15.0),
              TextFrave(
                  text: projectModel.title,
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
              const Spacer(),
              Icon(Icons.arrow_forward_ios,
                  color: const Color(0xffEDF1F5).withOpacity(0.5), size: 22)
            ],
          ),
        ),
      ),
    );
  }
}
