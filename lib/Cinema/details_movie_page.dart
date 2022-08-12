import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:booking_movie/Cinema/Bloc/cinema/cinema_bloc.dart';
import 'package:booking_movie/Cinema/Models/movie_model.dart';
import 'package:booking_movie/Cinema/buy_ticket_page.dart';
import 'package:booking_movie/Dashboard/Widgets/Widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailsMoviePage extends StatelessWidget {
  final MovieModel movieModel;

  const DetailsMoviePage({Key? key, required this.movieModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final cinemaBloc = BlocProvider.of<CinemaBloc>(context);

    return Scaffold(
      body: Stack(
        children: [
          Container(
              height: size.height,
              width: size.width,
              color: const Color(0xff21242C)),
          SizedBox(
            height: size.height * .6,
            width: size.width,
            child: Hero(
                tag: 'movie-hero-${movieModel.id}',
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(movieModel.image))),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient:
                          LinearGradient(begin: Alignment.bottomRight, colors: [
                        const Color(0xff21242C),
                        const Color(0xff21242C).withOpacity(.8),
                        const Color(0xff21242C).withOpacity(.1),
                      ]),
                    ),
                  ),
                )),
          ),
          Positioned(
            top: 250,
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                  width: size.width,
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
                ),
                const SizedBox(height: 20.0),
                TextFrave(
                  text: movieModel.name,
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 15.0),
                RatingBar.builder(
                    itemSize: 30,
                    initialRating: movieModel.qualification,
                    itemBuilder: (_, i) => const Icon(
                          Icons.star_rate_rounded,
                          color: Colors.amber,
                        ),
                    onRatingUpdate: (_) {}),
                const SizedBox(height: 15.0),
                TextFrave(
                    text:
                        ' ${movieModel.year} | ${movieModel.duration} | ${movieModel.genre}',
                    color: Colors.white70),
                const SizedBox(height: 25.0),
                const TextFrave(
                    text: 'Storyline',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
                const SizedBox(height: 15.0),
                SizedBox(
                  width: size.width * .9,
                  child: Wrap(
                    children: [
                      TextFrave(
                          text: movieModel.description,
                          color: Colors.white,
                          maxLines: 6,
                          textAlign: TextAlign.center)
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              top: 30,
              child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_ios_new_rounded,
                      color: Colors.white))),
          Positioned(
            left: 60,
            right: 60,
            bottom: 30,
            child: InkWell(
              onTap: () {
                // ADD TO BLOC
                cinemaBloc
                    .add(OnSelectMovieEvent(movieModel.name, movieModel.image));
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => BuyTicketPage(
                            titleMovie: movieModel.name,
                            imageMovie: movieModel.image)));
              },
              child: Container(
                alignment: Alignment.center,
                height: 60,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 169, 37, 27),
                    borderRadius: BorderRadius.circular(8.0)),
                child: const TextFrave(
                    text: 'Buy Ticket', fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
