import 'dart:ui';

import 'package:booking_movie/Cinema/Widgets/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:booking_movie/Cinema/Models/movie_model.dart';
import 'package:booking_movie/Cinema/Models/trailers_model.dart';
import 'package:booking_movie/Cinema/details_movie_page.dart';
import 'package:booking_movie/Dashboard/Widgets/Widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomeCinePage extends StatelessWidget {
  const HomeCinePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      backgroundColor: const Color(0xff21242C),
      appBar: AppBar(
        backgroundColor: const Color(0xff21242C),
        elevation: 0,
        actions: const [
          Icon(Icons.search, size: 30),
          SizedBox(width: 10.0),
          Icon(Icons.notifications_rounded, size: 30),
          SizedBox(width: 15.0),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        children: [
          const _ItemTitle(title: 'Trailers'),
          const SizedBox(height: 20.0),
          Container(
            margin: const EdgeInsets.only(left: 20.0),
            height: 200,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: TrailersMovie.listTrailers.length,
                itemBuilder: (context, i) =>
                    _ItemTrailers(trailers: TrailersMovie.listTrailers[i])),
          ),
          const SizedBox(height: 20.0),
          const _ItemTitle(title: 'Now Showing'),
          Container(
            margin: const EdgeInsets.only(left: 20.0),
            height: 280,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: MovieModel.listMovie.length,
              itemBuilder: (context, i) =>
                  _ItemsNowCinemas(movieModel: MovieModel.listMovie[i]),
            ),
          ),
          const SizedBox(height: 20.0),
          const _ItemTitle(title: 'Coming Soon'),
          Container(
            margin: const EdgeInsets.only(left: 20.0),
            height: 280,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, i) =>
                  _ItemsSoonMovie(movieModel: MovieModel.listMovie[i + 2]),
            ),
          ),
        ],
      ),
    );
  }
}

class _ItemsSoonMovie extends StatelessWidget {
  final MovieModel movieModel;

  const _ItemsSoonMovie({Key? key, required this.movieModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 210,
              width: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(movieModel.image))),
            ),
            const SizedBox(height: 15.0),
            SizedBox(
              width: 160,
              child: TextFrave(text: movieModel.name, color: Colors.white),
            ),
            const SizedBox(height: 5.0),
            RatingBar.builder(
                itemSize: 22,
                initialRating: movieModel.qualification,
                itemBuilder: (_, i) =>
                    const Icon(Icons.star_rate_rounded, color: Colors.amber),
                onRatingUpdate: (_) {})
          ],
        ),
      ),
    );
  }
}

class _ItemsNowCinemas extends StatelessWidget {
  final MovieModel movieModel;

  const _ItemsNowCinemas({Key? key, required this.movieModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (_) => DetailsMoviePage(movieModel: movieModel))),
      child: Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: 'movie-hero-${movieModel.id}',
              child: Container(
                height: 210,
                width: 160,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(movieModel.image))),
              ),
            ),
            const SizedBox(height: 15.0),
            SizedBox(
              width: 160,
              child: TextFrave(text: movieModel.name, color: Colors.white),
            ),
            const SizedBox(height: 5.0),
            RatingBar.builder(
                itemSize: 22,
                initialRating: movieModel.qualification,
                itemBuilder: (_, i) =>
                    const Icon(Icons.star_rate_rounded, color: Colors.amber),
                onRatingUpdate: (_) {})
          ],
        ),
      ),
    );
  }
}

class _ItemTitle extends StatelessWidget {
  final String title;

  const _ItemTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SizedBox(
        height: 50,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextFrave(
                text: title,
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w500),
            const TextFrave(text: 'View all', color: Colors.grey),
          ],
        ),
      ),
    );
  }
}

class _ItemTrailers extends StatelessWidget {
  final TrailersMovie trailers;

  const _ItemTrailers({Key? key, required this.trailers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Stack(
        children: [
          Container(
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(trailers.image))),
          ),
          SizedBox(
            width: 300,
            child: Center(
                child: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 10.0,
                  sigmaY: 10.0,
                ),
                child: Container(
                    padding: const EdgeInsets.all(15),
                    color: Colors.white.withOpacity(0.3),
                    child: const Icon(Icons.play_arrow_rounded,
                        color: Colors.white, size: 45)),
              ),
            )),
          )
        ],
      ),
    );
  }
}
