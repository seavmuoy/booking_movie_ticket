import 'package:booking_movie/page/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:booking_movie/Cinema/Bloc/cinema/cinema_bloc.dart';
import 'package:booking_movie/Cinema/home_cine_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return MultiBlocProvider(
      providers: [BlocProvider<CinemaBloc>(create: (context) => CinemaBloc())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cinema',
        initialRoute: '/',
        home: const Splash(),
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            visualDensity: VisualDensity.adaptivePlatformDensity),
      ),
    );
  }
}
