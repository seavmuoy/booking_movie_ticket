class MovieModel {
  final String id;
  final String name;
  final String image;
  final double qualification;
  final int year;
  final String duration;
  final String genre;
  final String description;

  const MovieModel(
      {required this.id,
      required this.name,
      required this.image,
      required this.qualification,
      required this.year,
      required this.duration,
      required this.genre,
      required this.description});

  static List<MovieModel> listMovie = [
    const MovieModel(
        id: '1',
        name: 'Venom: Let There Be Carnage',
        image: 'lib/assets/movie/movie1.jpg',
        qualification: 5,
        year: 2021,
        duration: '1h 37m',
        genre: 'Science fiction',
        description:
            'Sequel to the movie "Venom", the main villain of the film will be Carnage'),
    const MovieModel(
        id: '2',
        name: 'Fast & Furious 9',
        image: 'lib/assets/movie/movie2.jpg',
        qualification: 4,
        year: 2021,
        duration: '2h 25m',
        genre: 'Science fiction',
        description:
            'Domic Toretto leads a quiet life, away from everything, with Letty and her son, little Brian. danger is always lurking. This time, this threat will force Domic Toretto to face the sins of his past to save those he loves most.'),
    const MovieModel(
        id: '3',
        name: 'No Time to Die',
        image: 'lib/assets/movie/movie3.jpg',
        qualification: 3.9,
        year: 2021,
        duration: '2h 43m',
        genre: 'Action',
        description:
            'In "No Time to Die", James Bond (Daniel Craig) finds himself enjoying a well-deserved vacation in Jamaica. However, his peace ends when his CIA friend, Felix Leiter (Jeffrey Wright), seeks him out for a new mission that involves rescuing an important scientist who has been kidnapped.'),
    const MovieModel(
        id: '4',
        name: 'Free Guy',
        image: 'lib/assets/movie/movie4.jpg',
        qualification: 4.5,
        year: 2021,
        duration: '1h 55m',
        genre: 'Science fiction',
        description:
            'A bank worker discovers that he is actually a player in a video game.'),
    const MovieModel(
        id: '5',
        name: 'Reminiscence',
        image: 'lib/assets/movie/movie5.jpg',
        qualification: 4,
        year: 2021,
        duration: '1h 56m',
        genre: 'Science fiction',
        description:
            'In the near future, Nicolas Bannister (Hugh Jackman) has a business where his clients can relive any memory they want. His life changes when he meets Mae (Rebecca Ferguson), a woman who only comes to the office to remember where she left her keys. But this meeting soon turns into a passionate romance.'),
    const MovieModel(
        id: '6',
        name: 'Shang-Chi',
        image: 'lib/assets/movie/movie6.jpg',
        qualification: 4.7,
        year: 2021,
        duration: '2h 12m',
        genre: 'Science fiction',
        description:
            'Shang-Chi must face the past that he thought he had left behind when he is drawn into the web of the mysterious Ten Rings organization.'),
    const MovieModel(
        id: '7',
        name: 'Infinite',
        image: 'lib/assets/movie/movie7.jpg',
        qualification: 3.6,
        year: 2021,
        duration: '1h 46m',
        genre: 'Science fiction',
        description:
            'A man discovers that his hallucinations are actually past life visions.'),
    const MovieModel(
        id: '8',
        name: "Don't Breathe 2",
        image: 'lib/assets/movie/movie8.jpg',
        qualification: 4.2,
        year: 2021,
        duration: '1h 38m',
        genre: 'Terror',
        description:
            'The blind man has been hiding for years in an isolated cabin and has taken in and raised a girl who lost her parents in a house fire. Her quiet existence is shattered when a group of kidnappers show up and take the girl away.'),
    const MovieModel(
        id: '9',
        name: 'Jungle Cruise',
        image: 'lib/assets/movie/movie9.webp',
        qualification: 3.2,
        year: 2021,
        duration: '2h 7m',
        genre: 'Action',
        description:
            'Film set at the beginning of the 20th century. Frank (played by Dwayne Johnson) is the charismatic captain of a peculiar boat that travels through the Amazon rainforest.'),
    const MovieModel(
        id: '10',
        name: 'Black Widow',
        image: 'lib/assets/movie/movie10.jpg',
        qualification: 4.3,
        year: 2021,
        duration: '2h 14m',
        genre: 'Science fiction',
        description:
            'Natasha Romanoff, aka Black Widow, faces the darkest parts of her story when a dangerous conspiracy with ties to her past emerges.'),
    const MovieModel(
        id: '11',
        name: 'The Forever Purge',
        image: 'lib/assets/movie/movie11.jpg',
        qualification: 3.9,
        year: 2021,
        duration: '1h 43m',
        genre: 'Action',
        description:
            'Fifth (and last) installment of The Purge saga. If you could commit any crime with impunity one night a year, what would you do? Crime rages in America and jails are full.'),
    const MovieModel(
        id: '12',
        name: 'The Tomorrow War',
        image: 'lib/assets/movie/movie12.jpg',
        qualification: 4.4,
        year: 2021,
        duration: '2h 18m',
        genre: 'Science fiction',
        description:
            'One day the world comes to a standstill when a group of time travelers is transported from the year 2051 to deliver an urgent message: Humanity is losing the world war against a deadly alien species.'),
    const MovieModel(
        id: '13',
        name: 'The Ice Road',
        image: 'lib/assets/movie/movie13.jpg',
        qualification: 4.1,
        year: 2021,
        duration: '1h 48m',
        genre: 'Action',
        description:
            'A remote diamond mine has collapsed, trapping a group of miners in a remote and frozen region of Canada. As part of a team hired to rescue them.'),
    const MovieModel(
        id: '14',
        name: "Hitman's Wife's Bodyguard",
        image: 'lib/assets/movie/movie14.jpg',
        qualification: 4.4,
        year: 2021,
        duration: '1h 40m',
        genre: 'Action',
        description:
            'Sequel to ‘The other bodyguard’ (Patrick Hughes, 2017). Michael Bryce (Ryan Reynolds) tries to lead a peaceful life, but cant help but join Darius'),
  ];
}
